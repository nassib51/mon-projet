package com.monentreprise;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Application {
    private static final Logger logger = LoggerFactory.getLogger(Application.class);

    public void run() {
        logger.info("Exécution de la logique métier...");

        System.out.println("=================================");
        System.out.println("Bonjour depuis l'application Java!");
        System.out.println("=================================");

        for (int i = 1; i <= 5; i++) {
            logger.info("Traitement de l'étape {}", i);
            processStep(i);
        }

        logger.info("Traitement terminé avec succès");
    }

    private void processStep(int step) {
        System.out.println("✓ Étape " + step + " en cours...");

        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            logger.warn("Interruption détectée", e);
        }
    }
}
