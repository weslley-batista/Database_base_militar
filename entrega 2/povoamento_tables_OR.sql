ALTER SESSION SET NLS_TIMESTAMP_FORMAT='DD-MON-YY HH24:MI';
-- Povoando endereço
INSERT INTO tb_endereco VALUES ( 
    tp_endereco( 
        'rua girosvaldo itanhaem',
        82,
        'em frente ao bompreço',
        '50620-036'
    ) 
);


INSERT INTO tb_militar VALUES ( 
    tp_militar(
        'carlos santana',
        '78965432156',
        tp_arr_telefone (tp_telefone  (
        '81',
        '40028922'
        )),
        (SELECT REF(M) FROM tb_endereco M WHERE M.CEP = '50620036'),
        1,
        900,
    	tp_nt_descricao(tp_descricao_militar('22'))
    )
);



INSERT INTO tb_endereco VALUES ( 
    tp_endereco( 
        'rua fonte nova',
        12,
        'em frente a livraria cultura',
        '50810-036'
            ) 
    );


INSERT INTO tb_militar VALUES ( 
    tp_militar(
        'joão pedro',
        '12345678956',
        tp_arr_telefone (tp_telefone  (
        '81',
        '41128922'
        )),
        (SELECT REF(M) FROM tb_endereco M WHERE M.CEP = '50810-036'),
        2,
        905,
    	tp_nt_descricao(tp_descricao_militar('lutou bravamente contra os comunistas'))
    )
);



INSERT INTO tb_endereco VALUES ( 
    tp_endereco( 
        'rua bandoquim brasiliense',
        97,
        'em frente a pastelaria do beiçola',
        '77777-777'
            ) 
    );
----- Inserindo na NESTED TABLE descrição o militar
INSERT INTO TABLE(SELECT (M.descricao_militar or M.descricao) FROM tb_militar R WHERE M.nome = 'Pedro') -- Verificar se vai ficar M.descricao_militar or M.descricao 
    VALUES (tp_descricao_militar('22 CM NA REGUA'));

-- Povoando bases
-- Povoando bases
INSERT INTO tb_base VALUES (
    tp_base(
        'Comunicação 1',
        'Comunicação',
        tp_endereco(
            'Rua 1',
            1,
            'Quadra 1',
            '12345-123'
        ),
        tp_arr_telefone(
            tp_telefone(
                '81',
                '98888-8888'
                ),
                tp_telefone(
                '81',
                '98888-7777'
            )
        )
    )
);


INSERT INTO tb_base VALUES (
    tp_base(
        'Veiculos 1',
        'Veiculos',
        tp_endereco(
            'Rua 2',
            2,
            'Quadra 2',
            '99999-123',
        ),
        tp_arr_telefone(
            tp_telefone(
                '81',
                '98888-6666'
            ),
            tp_telefone(
                '82',
                '98888-5555'
            )
        )
    )
);
INSERT INTO tb_base VALUES (
    tp_base(
        'Armas 1',
        'Armamento',
        tp_endereco(
            'Rua Pistolinha',
            122,
            'Quadra 777',
            '12345-000'
        ),
        tp_arr_telefone(
            tp_telefone(
                '81',
                '98888-4444'
            ),
            tp_telefone(
                '81',
                '98888-3333'
            ) 
        )
    )
);

-- Inserindo Arsenais
INSERT INTO tb_arsenal VALUES (
    tp_arsenal(
        'Comunicação',
        to_date('05/06/2022', 'dd/mm/yy'),
        10,
        'Comunicação 1',
        'Pedro'
    )
);
INSERT INTO tb_arsenal VALUES (
    tp_arsenal(
        'Veiculos',
        to_date('01/07/2022', 'dd/mm/yy'),
        100,
        'Veiculos 1',
        'Weslley'
    )
);
INSERT INTO tb_arsenal VALUES (
    tp_arsenal(
        'Armas',
        to_date('01/07/2022', 'dd/mm/yy'),
        100,
        'Armas 1',
        'João'
    )
);
