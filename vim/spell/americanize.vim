" Source this file to auto-"correct" British spellings to their American
" equivalent:
"   
"     :source ~/.vim/spell/americanize.vim
"
" Or if you know the file is somewhere in your runtime path, you could
" instead run:
     :runtime spell/americanize.vim
" 
" The `:Abolish` command is provided by Tim Pope's abolish plugin (if
" you don't install this, americanize.vim won't do anything!):
"
"     http://github.com/tpope/vim-abolish
" 
" This is allows lowercase and titlecased abbreviations to be created in
" a single line:
"
"     :Abolish colour color
" 
" which is equivalent to manually creating the abbreviations:
"
"     iabbrev colour color
"     iabbrev Colour Color
"     iabbrev COLOUR COLOR
"
" Wikipedia has a good article on the differences between British and
" American English
"
"     http://en.wikipedia.org/wiki/American_and_British_English_spelling_differences

if !exists(":Abolish")
  finish
endif

" -our to -or
"  e.g. colour -> color
"  suffixes: color, colors, colored, colorless, colorist, honorable
Abolish -buffer {col,behavi,fav,flav,hon,neighb,rum,lab}our{,s,ed,less,able,ing} {}or{}

" -re to -er
"  e.g. litre -> liter
"  suffixes: liter, liters
Abolish -buffer {cent,goit,kilomet,lit,lust,mit,nit,reconnoit,saltpet,spect,theat,titre}re{,s} {}er{}

" -ce to -se
"  e.g. defence -> defense
Abolish -buffer {defen,offen,preten}ce {}se

" Doubled consonants before a suffix
Abolish -buffer {cance,counse,crue,mode,quarre,signa,trave}{lled,llor,ller,llest,lling,} {}{led,lor,ler,lest,ling}
Abolish -buffer jewellery jewelry
Abolish -buffer fulfil fulfill

" Dropped 'e'
" british: likeable
" merican: likable
Abolish -buffer {lik,liv,rat,sal,siz,unshak}eable {}able
Abolish -buffer judgement judgment

" organize, organized, organization and similar...
Abolish -buffer {actual,aggrand,agon,alphabet,antagon,anthropomorph,aphor,apolog,arbor,author,autom,bapt,barbar,brutal,canon,capital,categor,cauter,character,civil,colon,color,compartmental,computer,conceptual,concret,criminal,critic,crystal,custom,demonet,departmental,desensit,destabil,digital,dogmat,dramat,econom,emphas,energ,eulog,euthan,extempor,external,factual,fantas,fertil,fibern,final,formal,fratern,galvan,general,global,harmon,hellen,homogen,hospital,human,hypothes,ideal,immobil,individual,institutional,internal,ion,legal,legitim,lion,material,memor,mesmer,method,moral,motor,national,natural,neutral,normal,notar,organ,ostrac,pagan,pasteur,patron,penal,personal,philosoph,plagiar,polar,popular,pressur,priorit,privat,proselyt,public,pulver,quant,random,rational,real,recogn,regional,satir,sensual,serial,social,special,stabil,standard,steril,stigmat,subsid,summar,symbol,synchron,synthes,terror,theor,total,tranquil,trivial,tyrann,universal,urban,util,vandal,vapor,vasectom,visual,vocal,weather,woman}is{e,ed,er,es,ation} {}iz{}

" analyse, analysed and similar...
Abolish -buffer {anal,cata,hydrol,paral}ys{e,ed} {}yz{}

" AE and OE simplifications
Abolish -buffer amoeba ameba
Abolish -buffer anaemia anemia
Abolish -buffer anaesthe{sia,tic,siologist} anesthe{}
Abolish -buffer anaesthetist anesthesiologist
Abolish -buffer caesium cesium
Abolish -buffer diarrhoea diarrhea
Abolish -buffer encyclopaedi{a,c} encyclopedi{}
Abolish -buffer faeces feces
Abolish -buffer foet{al,us} fet{}
Abolish -buffer gynaecolog{y,ist} gynecolog{}
Abolish -buffer haemophilia hemophilia
Abolish -buffer leukaemia leukemia
Abolish -buffer oesophagus esophagus
Abolish -buffer oestrogen estrogen
Abolish -buffer orthopaedic orthopedic
Abolish -buffer palaeontolog{y,ist} paleontology{}
Abolish -buffer paediatric pediatric
Abolish -buffer homoeopath{y,ic} homeopath{}
Abolish -buffer mediaeval medieval
Abolish -buffer manoeuv{re,res,red} maneuv{er,ers,ered}

" Miscellaneous
Abolish -buffer cheque{,s,r,rs} check{,s,er,ers}
Abolish -buffer chilli chili
Abolish -buffer draught{,y,ed} draft{,y,ed}
Abolish -buffer kerb curb
Abolish -buffer liquorice licorice
Abolish -buffer mould{,y} mold{,y}
Abolish -buffer moult{,y} molt{,y}
Abolish -buffer moustache mustach
Abolish -buffer phoney phony
Abolish -buffer pyjamas pajamas
Abolish -buffer plough{,man} plow{,man}
Abolish -buffer sceptic{,al,ism} skeptic{,al,ism}
Abolish -buffer tyre{,s} tire{,s}
