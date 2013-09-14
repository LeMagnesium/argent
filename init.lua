--[[

Argent, un petit mod permettant de cr��er une �conomie sur un serveur minetest.
Cr�� par turbogus et aid� par Zaraki98
Code et graphisme en GPL

]]--

--**************************************************************************************
--Poin�on � pi�ces :
minetest.register_craftitem("argent:poincon", {
description = "poincon",
inventory_image = "poincon.png",
})

minetest.register_craft({
output = "argent:poincon",
recipe = {
{"","default:stick",""},
{"","default:stick",""},
{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
}
})

--Tampon � billet :
minetest.register_craftitem("argent:tampon", {
description = "tampon",
inventory_image = "tampon.png",
})

minetest.register_craft(
{
output = "argent:tampon",
recipe =
{
{"","default:stick",""},
{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
}

})

--**************************************************************************************
--Pi�ce en charbon (1 centimes) :
minetest.register_craftitem("argent:piece_charbon", {
description = " piece en charbon",
inventory_image = "piece_charbon.png",
})

minetest.register_craft(
{
output = "argent:piece_charbon";
recipe =
{
{"argent:poincon"},
{"default:coal_lump"},
};
replacements =
{
{"argent:poincon","argent:poincon"},
};
});

--Tube de piece en charbon (9 centimes) :
minetest.register_craftitem("argent:tube_piece_charbon", {
description = "tube de 9 pieces en charbon",
inventory_image = "tube_piece_charbon.png",
})
minetest.register_craft(
{
output = "argent:tube_piece_charbon",
recipe =
{
{"argent:piece_charbon","argent:piece_charbon","argent:piece_charbon"},
{"argent:piece_charbon","argent:piece_charbon","argent:piece_charbon"},
{"argent:piece_charbon","argent:piece_charbon","argent:piece_charbon"},
}
}
)
minetest.register_craft(
{
output = "argent:piece_charbon 9",
recipe =
{
{"argent:tube_piece_charbon"},
}
}
)

--Pi�ce en etain (10 centimes) :
minetest.register_craftitem("argent:piece_etain", {
description = " piece en etain",
inventory_image = "piece_etain.png",
})
minetest.register_craft(
{
output = "argent:piece_etain";
recipe =
{
{"argent:poincon"},
{"moreores:tin_ingot"},
};
replacements =
{
{"argent:poincon","argent:poincon"},
};
});
minetest.register_craft(
{
output = "argent:piece_etain",
recipe = {
{"argent:tube_piece_charbon","argent:piece_charbon"},
}
}
)

--Tube de piece en etain (90 centimes) :
minetest.register_craftitem("argent:tube_piece_etain", {
description = "tube de 9 pieces en etain",
inventory_image = "tube_piece_etain.png",
})
minetest.register_craft(
{
output = "argent:tube_piece_etain",
recipe =
{
{"argent:piece_etain","argent:piece_etain","argent:piece_etain"},
{"argent:piece_etain","argent:piece_etain","argent:piece_etain"},
{"argent:piece_etain","argent:piece_etain","argent:piece_etain"},
}
}
)
minetest.register_craft(
{
output = "argent:piece_etain 9",
recipe =
{
{"argent:tube_piece_etain"},
}
}
)

--Pi�ce en cuivre (50 centimes) :
minetest.register_craftitem("argent:piece_cuivre", {
description = " piece en cuivre",
inventory_image = "piece_cuivre.png",
})
minetest.register_craft(
{
output = "argent:piece_cuivre";
recipe =
{
{"argent:poincon"},
{"moreores:copper_ingot"},
};
replacements =
{
{"argent:poincon","argent:poincon"},
};
});

--Tube de pi�ces en cuivre (4� 50) :
minetest.register_craftitem("argent:tube_piece_cuivre", {
description = "tube de 9 pieces en cuivre",
inventory_image = "tube_piece_cuivre.png",
})
minetest.register_craft(
{
output = "argent:tube_piece_cuivre",
recipe =
{
{"argent:piece_cuivre","argent:piece_cuivre","argent:piece_cuivre"},
{"argent:piece_cuivre","argent:piece_cuivre","argent:piece_cuivre"},
{"argent:piece_cuivre","argent:piece_cuivre","argent:piece_cuivre"},
}
}
)
minetest.register_craft(
{
output = "argent:piece_cuivre 9",
recipe =
{
{"argent:tube_piece_cuivre"},
}
}
)

--Pi�ce en acier (1�) :
minetest.register_craftitem("argent:piece_acier", {
description = " piece en acier",
inventory_image = "piece_acier.png",
})
minetest.register_craft(
{
output = "argent:piece_acier";
recipe =
{
{"argent:poincon"},
{"default:steel_ingot"},
};
replacements =
{
{"argent:poincon","argent:poincon"},
};
});
minetest.register_craft(
{
output = "argent:piece_acier",
recipe = {
{"argent:piece_cuivre","argent:piece_cuivre"},
}
}
)

--Tube de pi�ces en acier (9�) :
minetest.register_craftitem("argent:tube_piece_acier", {
description = "tube de 9 pieces en acier",
inventory_image = "tube_piece_acier.png",
})
minetest.register_craft(
{
output = "argent:tube_piece_acier",
recipe =
{
{"argent:piece_acier","argent:piece_acier","argent:piece_acier"},
{"argent:piece_acier","argent:piece_acier","argent:piece_acier"},
{"argent:piece_acier","argent:piece_acier","argent:piece_acier"},
}
}
)
minetest.register_craft(
{
output = "argent:piece_acier 9",
recipe =
{
{"argent:tube_piece_acier"},
}
}
)
--**************************************************************************************
--Billet de 10
minetest.register_craftitem("argent:billet10", {
description = " billet de 10",
inventory_image = "billet10.png",
})
minetest.register_craft(
{
output="argent:billet10";
recipe=
{
{"argent:tampon"},
{"moreores:silver_ingot"},
{"default:paper"},
};
replacements =
{
{"argent:tampon","argent:tampon"},
};
});
minetest.register_craft(
{
output="argent:billet10",
recipe=
{
{"argent:tube_piece_acier","argent:piece_acier"},
}
}
)

--Billet de 20
minetest.register_craftitem("argent:billet20", {
description = " billet de 20",
inventory_image = "billet20.png",
})

minetest.register_craft(
{
output="argent:billet20";
recipe=
{
{"argent:tampon"},
{"moreores:gold_ingot"},
{"default:paper"},
};
replacements=
{
{"argent:tampon","argent:tampon"},
};
});

minetest.register_craft(
{
output="argent:billet20",
recipe=
{
{"argent:billet10"},
{"argent:billet10"},
}
}
)


--Billet de 50
minetest.register_craftitem("argent:billet50", {
description = " billet de 50",
inventory_image = "billet50.png",
})

minetest.register_craft(
{
output="argent:billet50";
recipe=
{
{"argent:tampon"},
{"default:mese_crystal"},
{"default:paper"},
};
replacements=
{
{"argent:tampon","argent:tampon"},
};
});

minetest.register_craft(
{
output="argent:billet50",
recipe=
{
{"argent:billet10","",""},
{"argent:billet10","argent:billet10",""},
{"argent:billet10","argent:billet10",""},
}
}
)

minetest.register_craft(
{
output="argent:billet50",
recipe=
{
{"argent:billet10"},
{"argent:billet20"},
{"argent:billet20"},
}
}
)

minetest.register_craft(
{
output="argent:billet50",
recipe=
{
{"argent:billet10","",""},
{"argent:billet10","",""},
{"argent:billet10","argent:billet20",""},
}
}
)
--Billet de 100
minetest.register_craftitem("argent:billet100", {
description = " billet de 100",
inventory_image = "billet100.png",
})

minetest.register_craft(
{
output="argent:billet100";
recipe=
{
{"argent:tampon"},
{"default:diamond"},
{"default:paper"},
};
replacements =
{
{"argent:tampon","argent:tampon"},
};
}
);

minetest.register_craft(
{
output="argent:billet100",
recipe=
{
{"argent:billet50"},
{"argent:billet50"},
}
}
)

minetest.register_craft(
{
output="argent:billet100",
recipe=
{
{"argent:billet20","argent:billet20","argent:billet20"},
{"argent:billet20","argent:billet20",""},
}
}
)



--Billet de 200
minetest.register_craftitem("argent:billet200", {
description = " billet de 200",
inventory_image = "billet200.png",
})

minetest.register_craft(
{
output="argent:billet200";
recipe=
{
{"","argent:tampon",""},
{"default:diamond","default:diamond",""},
{"","default:paper",""},
};
replacements =
{
{"argent:tampon","argent:tampon"},
};
}
);
minetest.register_craft(
{
output="argent:billet200",
recipe=
{
{"argent:billet50","argent:billet50","argent:billet50"},
{"argent:billet50","",""},
}
}
)
minetest.register_craft(
{
output="argent:billet200",
recipe=
{
{"argent:billet100"},
{"argent:billet100"},
}
}
)


--Billet de 500
minetest.register_craftitem("argent:billet500", {
description = " billet de 500",
inventory_image = "billet500.png",
})

minetest.register_craft(
{
output="argent:billet500";
recipe=
{
{"argent:tampon"},
{"default:mese_block"},
{"default:paper"},
};
replacements =
{
{"argent:tampon","argent:tampon"},
};
}
);

minetest.register_craft(
{
output="argent:billet500",
recipe=
{
{"argent:billet100","argent:billet100","argent:billet100"},
{"argent:billet100","argent:billet100",""},
}
}
)

minetest.register_craft(
{
output="argent:billet500",
recipe=
{
{"argent:billet200"},
{"argent:billet200"},
{"argent:billet100"},
}
}
)



--[[

Convertions :

- 10 pi�ces en charbon = 1 pi�ce en etain
- 50 pi�ces en charbon = 5 pi�ces en etain = 1 pi�ce en cuivre
- 100 pi�ces en charbon = 10 pi�ces en etain = 2 pi�ces en cuivre = 1 pi�ce en acier
- 1.000 pi�ces en charbon = 100 pi�ces en etain = 20 pi�ces en cuivre = 10 pi�ces en acier = 1 billet de 10 // 1 billet de 10 = 1 feuille � billet + silver_ingot + tampon
- 2.000 pi�ces en charbon = 200 pi�ces en etain = 40 pi�ces en cuivre = 20 pi�ces en acier = 1 billet de 20 // 1 billet de 20 = 1 feuille � billet + gold_ingot + tampon
- 5.000 pi�ces en charbon = 500 pi�ces en etain = 100 pi�ces en cuivre = 50 pi�ces en acier = 1 billet de 50 // 1 billet de 50 = 1 feuille � billet + mese_crystal + tampon
- 10.000 pi�ces en charbon = 1.000 pi�ces en etain = 200 pi�ces en cuivre = 100 pi�ces en acier = 1 billet de 100 // 1 billet de 100 = 1 feuille � billet + diamond_crystal + tampon
- 20.000 pi�ces en charbon = 2.000 pi�ces en etain = 400 pi�ces en cuivre = 200 pi�ces en acier = 1 billet de 200 // 1 billet de 200 = 1 feuille � billet + 2 diamond_crystal + tampon
- 50.000 pi�ce en charbon = 5.000 pi�ces en etain = 1.000 pi�ces en cuivre = 500 pi�ces en acier = 1 billet de 500 // 1 billet de 500 = 1 feuille � billet + mese_block + tampon

]]--
