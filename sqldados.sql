
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cep` int(11) DEFAULT NULL,
  `endereco` varchar(220) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(120) DEFAULT NULL,
  `bairro` varchar(220) DEFAULT NULL,
  `cidade` varchar(220) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;


INSERT INTO `usuarios` (`id`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `created`, `modified`);
