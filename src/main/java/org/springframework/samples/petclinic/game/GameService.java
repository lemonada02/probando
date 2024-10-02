package org.springframework.samples.petclinic.game;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.card.Card;
import org.springframework.samples.petclinic.card.CardService;
import org.springframework.samples.petclinic.scoreboard.Scoreboard;
import org.springframework.samples.petclinic.scoreboard.ScoreboardService;
import org.springframework.samples.petclinic.user.UserService;
import org.springframework.samples.petclinic.user.User;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;

@Service
public class GameService {

    protected GameRepository gameRepository;

    @Autowired
    GameService(GameRepository gameRepository) {
        this.gameRepository = gameRepository;
    }

    @Autowired
    private ScoreboardService scoreboardService;
    @Autowired
    private UserService userService;
    @Autowired
    private CardService cardService;

    List<Game> findAll() {
        return gameRepository.findAll();
    }

    public Game findById(int gameId) {
        return gameRepository.findById(gameId);
    }

    public void saveGame(Game game) {
        gameRepository.save(game);
    }

    @Transactional
    public void initPlayerToGame(String username, Game game) {
        game.setNumberOfPlayers(1);
        gameRepository.save(game);
        Scoreboard sb = new Scoreboard();
        User user = userService.findUser(username);
        gameRepository.save(game);
        sb.setOrder(1);
        sb.setScore(0);
        sb.setUser(user);
        sb.setGame(game);
        scoreboardService.save(sb);
    }

    public void joinPlayerToGame(String username, Game game) {
        Scoreboard sb = new Scoreboard();
        User user = userService.findUser(username);
        Integer currentPlayers = game.getNumberOfPlayers();
        game.setNumberOfPlayers(currentPlayers + 1);
        sb.setOrder(game.getNumberOfPlayers());
        sb.setScore(0);
        sb.setUser(user);
        sb.setGame(game);
        scoreboardService.save(sb);
        gameRepository.save(game);
    }

    @Transactional
	public void initGame(Integer id) {
		Game game = findById(id);
		List<Card> cards = cardService.findAll();
		game.setCards(cards);
		game.setTurn(1);
		gameRepository.save(game);
	}

    @Transactional
	public void repartoCartas(Game game, User user) {
		int size = game.getCards().size();
		Random random = new Random(System.currentTimeMillis());
		Card card = game.getCards().get(random.nextInt(size));
		List<Card> cartas = user.getMazo();
		cartas.add(card);
		user.setMazo(cartas);
		game.getCards().remove(card);
		gameRepository.save(game);
		userService.saveUser(user);
	}
}
