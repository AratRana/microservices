CREATE TABLE `account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `credentialsexpired` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `expired` bit(1) NOT NULL,
  `locked` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_gex1lmaqpg0ir5g1f5eftyaa1` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;


CREATE TABLE `account_role` (
  `account_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`account_id`,`role_id`),
  KEY `FK_p2jpuvn8yll7x96rae4hvw3sj` (`role_id`),
  CONSTRAINT `FK1f8y4iy71kb1arff79s71j0dh` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `FK_ibmw1g5w37bmuh5fc0db7wn10` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `FK_p2jpuvn8yll7x96rae4hvw3sj` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKrs2s3m3039h0xt8d5yhwbuyam` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*
-- Query: select *from account
LIMIT 0, 1000

-- Date: 2018-03-28 16:49
*/
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (3,'0','1','0','0','papidakos','cpapidas');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (5,'0','1','0','0','b8f57d6d6ec0a60dfe2e20182d4615b12e321cad9e2979e0b9f81e0d6eda78ad9b6dcfe53e4e22d1','cpapidas2');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (10,'0','1','0','0','$2a$10$h6cO.XkIuJ8I1kS2ZuaW/uRbv67.0ib7xOLdyLhAdWtN5cXRXSatW','cdddddc');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (11,'0','1','0','0','$2a$10$gTqi4RDXj5ovC.MoFHEoEOMMhPqjcvF/R49EjxwfUme6PwXhUHMwa','cc');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (13,'0','1','0','0','$2a$10$nlGCcuWdRcLDVOFYzudn5.tl4bhH47mkZDB3JubzbZy6obZVxgdmy','cd');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (15,'0','1','0','0','$2a$10$jT/N9/TgXnbGpdH0R1lfL.VlCihlR9jY7CBESimbtyAhOAwo9bguu','cs');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (16,'0','1','0','0','$2a$10$wupaAG1Cu8rGI4.kapj7rebxjGKfwjBYjkWbq.F.ZQKyiegu0exrq','wesdfsdfsdfs');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (17,'0','1','0','0','$2a$10$QufI1ku2vBT1NBCENVAKUeHsaktKTGZPzn/I66WdcTnXqEhbqAaC6','yy');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (18,'0','1','0','0','$2a$10$1OOIk5weuiDjS8S9BKpP3uBohiQ/RaLJjUJfiqdn8IIumXQ6hXn3K','mm33');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (19,'0','1','0','0','$2a$10$AZJQX.Zppg2.5geTAnC6V.XUJt.NGtYROpxoKpOdBCHoDCtbU/cNa','mm33dfgdfg');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (20,'0','1','0','0','$2a$10$lWh.9oyG1fz7NaMrEd32m.hLm4ucEhQdanNO09fmVFZB1YxyRC3ua','wesdfsdllfsdfs');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (21,'0','1','0','0','$2a$10$3ybRtrgCf1D.01aeWwheluIaOEJ8FRw0UZ7LBG.yzvY1.2/QTCghK','asdfafsd234');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (22,'0','1','0','0','$2a$10$x1loX5n0.b5MHDSfLWEJduhZgNU.6aVlaxAJ57PlWs.B.FlFDhL3K','asdfafsd234e');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (23,'0','1','0','0','$2a$10$qSyGWdtTl2w2ubms8P2c1.PR4.QAxFuAaFMyA133XsGXJfPNXnVzi','sdfsdf333');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (24,'0','1','0','0','$2a$10$/Dtd5WqgGTmTGDaB8Sd6vOTdyCu4qc9G94Igukv3QONpuB.aUkBue','sdfsdf333s');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (25,'0','1','0','0','$2a$10$MA50o0uzuyqERecKD7Rl4uqdlNDAm1x/4nE2.1cJ1DTvsf8799i.O','fasdf3333');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (26,'0','1','0','0','$2a$10$KL00afcwiDbq24EBev1Lj.CG5WSgydNra3LlmRu3CWJMIlNF/TQcO','fasdf33332');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (27,'0','1','0','0','$2a$10$PY9L787.w5VgoO9ZH0S62OQOz31.yARV6w.F2QfiRxbPTktZ0s9oy','Christost22');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (28,'0','1','0','0','$2a$10$Q9XKh8cc4J7qy0cy9OSksuXhOwMgoghPof8ILZxsULuk3gsMr65gC','asdfasdf234');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (29,'0','1','0','0','$2a$10$q4FAN8hsZKwEGWWmKUJK4uan4hBHhq2nd.NLm.tc2qDq3COjHfkz6','adsfsda234');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (30,'0','1','0','0','$2a$10$oXvocLdaQVC3n4wKYEtON./1EnOn8Jk5E9XTQEYHvJEjD7uj12Pvy','asdfasdf1234');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (31,'0','1','0','0','$2a$10$OFLSsg0x5A36HPq3.2wEDexxPlHQzWvQGo5rmfG5P6eeORtaQ/Ubq','asfdasdf3433');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (32,'0','1','0','0','$2a$10$XlUPeD83cMNbnjnXnXHcxubm0n9SrBd.LsCB3wxwAge6tYhwhumZq','fasfafd324');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (38,'0','1','0','0','$2a$10$SdZfafMVkFopgdvi/JrBn.h1KDIt.3Dfx6lbhLWB/CiGIBNiGGg/i','asdfasdf2344');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (39,'0','1','0','0','$2a$10$7sibRze3x6SVstcQYXSDe.LqhE0gUHvSfDTVZKyURr9EzKykw4sry','dsfsdff444');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (40,'0','1','0','0','$2a$10$EglFcHZnRyzrlmvb1ldV9e89IL1IqgdLhgeG/WGAR9UeXRP0fNYnW','ddsdsdfffd');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (41,'0','1','0','0','$2a$10$5RcLNvOD.r03ZayV53MxVuUQYbJvDtMrRFTTUVL9G2X0S6/ZxEo3S','papidakos');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (42,'0','1','0','0','$2a$10$eR.90pak84ipqOq9HVEMq.VgQ8O9JOFGOYROCzNzb7hdRhI/cEmem','papidakos2');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (43,'0','1','0','0','spring','roy');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (44,'0','1','0','0','$2a$10$FbaEGdHDEEvpPHjSZkWNyecmsL79lH8qzJKexRo5EH4shvZfd4WhG','papapakiki');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (45,'0','1','0','0','$2a$10$69qe1gDLxu9T2n6fIV6s3.bY.uvNBEG/GvLcw7enccZ4HFLY2sMHy','papapakiki1');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (46,'0','1','0','0','$2a$10$qBQBPCNXVGd5l.qZd47MKuI.M88K8WiwbigPUxpUbx1WJA5b8oK8q','papalolif');
INSERT INTO `account` (`id`,`credentialsexpired`,`enabled`,`expired`,`locked`,`password`,`username`) VALUES (47,'0','1','0','0','$2a$10$6LZfgsqeunoY4gLc1EZbe..6q5seZrA191F6iH81EeI709Y0h.1Py','fafafakoko');



/*
-- Query: select *from account_role
LIMIT 0, 1000

-- Date: 2018-03-28 16:49
*/
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (3,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (5,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (10,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (11,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (13,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (15,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (16,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (17,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (18,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (19,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (20,1); 
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (21,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (22,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (23,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (24,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (25,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (26,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (27,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (28,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (29,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (30,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (31,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (32,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (38,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (39,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (40,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (41,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (42,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (44,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (45,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (46,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (47,1);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (3,2);
INSERT INTO `account_role` (`account_id`,`role_id`) VALUES (3,3);


/*
-- Query: select *from `role`
LIMIT 0, 1000

-- Date: 2018-03-28 16:50
*/
INSERT INTO `role` (`id`,`code`,`label`) VALUES (1,'ROLE_USER','User');
INSERT INTO `role` (`id`,`code`,`label`) VALUES (2,'ROLE_WRITER','User');
INSERT INTO `role` (`id`,`code`,`label`) VALUES (3,'ROLE_READER','User');
