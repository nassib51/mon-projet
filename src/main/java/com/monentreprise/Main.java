package com.monentreprise;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Main {
    private static final Logger logger = LoggerFactory.getLogger(Main.class);

    public static void main(String[] args) {
        logger.info("Démarrage de l'application...");

        try {
            Application app = new Application();
            app.run();

            logger.info("Application terminée avec succès");
        } catch (Exception e) {
            logger.error("Erreur lors de l'exécution", e);
            System.exit(1);
        }
    }
}
