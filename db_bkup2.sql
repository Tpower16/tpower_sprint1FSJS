toc.dat                                                                                             0000600 0004000 0002000 00000005220 14345657442 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       "    "                z            car_data    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    41887    car_data    DATABASE     S   CREATE DATABASE car_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE car_data;
                postgres    false         �            1259    41889    car_data    TABLE     �   CREATE TABLE public.car_data (
    id integer NOT NULL,
    car_make character varying(60) NOT NULL,
    car_model character varying(60) NOT NULL,
    car_model_year character varying(4) NOT NULL
);
    DROP TABLE public.car_data;
       public         heap    postgres    false         �            1259    41888    car_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.car_data_id_seq;
       public          postgres    false    210         �           0    0    car_data_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.car_data_id_seq OWNED BY public.car_data.id;
          public          postgres    false    209         f           2604    41892    car_data id    DEFAULT     j   ALTER TABLE ONLY public.car_data ALTER COLUMN id SET DEFAULT nextval('public.car_data_id_seq'::regclass);
 :   ALTER TABLE public.car_data ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210         �          0    41889    car_data 
   TABLE DATA           K   COPY public.car_data (id, car_make, car_model, car_model_year) FROM stdin;
    public          postgres    false    210       3573.dat �           0    0    car_data_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.car_data_id_seq', 1, false);
          public          postgres    false    209         h           2606    41894    car_data car_data_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.car_data
    ADD CONSTRAINT car_data_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.car_data DROP CONSTRAINT car_data_pkey;
       public            postgres    false    210                                                                                                                                                                                                                                                                                                                                                                                        3573.dat                                                                                            0000600 0004000 0002000 00000027563 14345657442 0014306 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Toyota	Solara	2000
2	Toyota	Prius v	2012
3	Buick	Lucerne	2009
4	Volvo	V70	1998
5	Lexus	LX	2013
6	Nissan	Rogue	2010
7	Toyota	Sienna	1998
8	Audi	A4	2002
9	Ford	Econoline E250	1993
10	Chevrolet	Cavalier	1992
11	Pontiac	GTO	1964
12	Pontiac	Gemini	1987
13	Lexus	ES	1999
14	Dodge	D250 Club	1993
15	Chevrolet	Express 3500	2006
16	Dodge	Ram 3500	1997
17	Lexus	IS F	2009
18	Buick	Rainier	2007
19	Ford	Transit Connect	2011
20	Buick	Century	2004
21	Ford	Mustang	1974
22	Pontiac	Montana	2004
23	Aston Martin	Vantage	2007
24	Dodge	Dakota Club	1998
25	Toyota	Land Cruiser	2003
26	GMC	Canyon	2007
27	Mercury	Cougar	1984
28	Buick	Skylark	1995
29	Lexus	LS	1997
30	Land Rover	Freelander	2001
31	Porsche	911	1987
32	Chevrolet	Express 1500	1999
33	Volvo	S80	2009
34	Chevrolet	Express 3500	2006
35	Hyundai	Genesis	2009
36	Maybach	Landaulet	2012
37	Nissan	Rogue	2011
38	Ford	Explorer	2012
39	Toyota	Avalon	1996
40	Ford	F150	1997
41	Chevrolet	Suburban 1500	2010
42	Mercedes-Benz	E-Class	1989
43	Dodge	Ram	2003
44	Buick	Century	1999
45	Pontiac	Grand Am	1996
46	Buick	Century	1986
47	Mercedes-Benz	G-Class	2003
48	Chevrolet	Venture	2003
49	Nissan	Altima	2010
50	Mazda	Protege	1997
51	Lincoln	Continental Mark VII	1988
52	Dodge	Grand Caravan	1998
53	Toyota	Sequoia	2010
54	Ford	Crown Victoria	2004
55	Nissan	Frontier	2002
56	Isuzu	Space	1992
57	Audi	A4	1999
58	Buick	Century	2002
59	Toyota	TundraMax	2011
60	Mitsubishi	Eclipse	2000
61	Honda	Civic	1995
62	Ferrari	612 Scaglietti	2009
63	BMW	Z4 M	2008
64	Honda	Odyssey	1996
65	Nissan	Murano	2011
66	Ford	F-Series	2002
67	Mitsubishi	RVR	1994
68	Chevrolet	Cavalier	2004
69	Jeep	Wrangler	1993
70	GMC	Acadia	2011
71	Toyota	4Runner	1996
72	Hyundai	Azera	2010
73	Volvo	C70	2003
74	Oldsmobile	Alero	2004
75	Dodge	Ram Van 1500	2002
76	Chrysler	Pacifica	2007
77	Dodge	Caravan	1995
78	Lincoln	Town Car	2003
79	Toyota	Avalon	2002
80	Chevrolet	Camaro	1972
81	GMC	Savana	2009
82	Mercury	Topaz	1989
83	GMC	Savana 3500	2009
84	Ford	E250	1984
85	Mercury	Grand Marquis	2006
86	Dodge	Dakota	2010
87	Isuzu	Amigo	1994
88	Honda	Ridgeline	2010
89	Bentley	Continental Flying Spur	2007
90	Ford	Mustang	2008
91	Chevrolet	Express	2009
92	Dodge	Ram 3500 Club	1997
93	Dodge	Ram Wagon B350	1992
94	Buick	Park Avenue	1993
95	Ford	Mustang	1985
96	Chrysler	PT Cruiser	2004
97	Volkswagen	Tiguan	2011
98	Mazda	Miata MX-5	2008
99	Cadillac	SRX	2008
100	Mercury	Cougar	2002
101	Kia	Rio	2011
102	Nissan	Titan	2011
103	Mazda	B2500	2001
104	Mazda	Mazdaspeed 3	2010
105	Pontiac	Firebird	1992
106	Saturn	S-Series	2002
107	Volkswagen	Jetta	2000
108	Ford	F450	2011
109	Audi	100	1990
110	Saturn	S-Series	1992
111	Ford	Fairlane	1966
112	GMC	Sierra 2500	2004
113	Chevrolet	Suburban 2500	2007
114	Honda	S2000	2006
115	Dodge	Dakota	2001
116	Audi	riolet	1998
117	Kia	Sedona	2011
118	Chevrolet	Silverado 2500	2000
119	Maserati	Quattroporte	1985
120	Chevrolet	Camaro	2001
121	Hyundai	Sonata	2008
122	Mazda	GLC	1984
123	Pontiac	Grand Prix	1989
124	Toyota	Camry Hybrid	2010
125	Cadillac	Seville	1998
126	Porsche	Boxster	2008
127	Ford	Econoline E350	1996
128	Dodge	Ram Van 2500	2002
129	Cadillac	XLR	2009
130	Ford	Windstar	1998
131	Dodge	Ram Wagon B150	1994
132	Dodge	Durango	1998
133	Oldsmobile	Intrigue	2002
134	Pontiac	Grand Prix	1997
135	Ford	Ranger	2004
136	Isuzu	VehiCROSS	2001
137	Ford	Focus	2010
138	Dodge	Ram 2500	2004
139	Lexus	IS-F	2010
140	Chrysler	Cirrus	2000
141	Volkswagen	Passat	2002
142	Mercedes-Benz	S-Class	2002
143	Honda	CR-X	1988
144	Acura	ZDX	2012
145	Mazda	CX-9	2007
146	Lincoln	MKZ	2011
147	Dodge	Dakota	2004
148	Chevrolet	Astro	2002
149	Buick	Park Avenue	2003
150	Mercedes-Benz	SL-Class	2007
151	Chrysler	Prowler	2002
152	Chevrolet	Express 3500	2002
153	Ford	Explorer	2010
154	Pontiac	Grand Prix	2008
155	Acura	TL	2005
156	Chrysler	LHS	1999
157	Chevrolet	Silverado	2001
158	Chevrolet	G-Series G20	1994
159	Chevrolet	Astro	1995
160	Dodge	Neon	2000
161	Honda	Civic	1995
162	Ford	Festiva	1992
163	Mitsubishi	Truck	1990
164	Smart	Fortwo	2008
165	Mercury	Mystique	1998
166	Chevrolet	Silverado 3500	2001
167	Land Rover	LR2	2012
168	Hummer	H1	2006
169	Mercury	Cougar	1990
170	Land Rover	Range Rover	2009
171	Volkswagen	Cabriolet	1989
172	Jaguar	S-Type	2000
173	Hyundai	Santa Fe	2005
174	Volvo	S40	2005
175	Nissan	Murano	2003
176	BMW	Z8	2000
177	Buick	Enclave	2009
178	Mercedes-Benz	CLS-Class	2007
179	Hyundai	Santa Fe	2002
180	Pontiac	Sunbird	1991
181	Cadillac	Eldorado	1997
182	Honda	Accord	1998
183	Pontiac	Firebird Formula	1992
184	Chrysler	Sebring	1996
185	Mitsubishi	Starion	1985
186	Ford	Explorer Sport	2000
187	Dodge	Aries	1981
188	Chevrolet	G-Series 2500	1998
189	Saturn	L-Series	2000
190	Chevrolet	HHR	2009
191	Porsche	924 S	1987
192	Isuzu	Oasis	1998
193	Lexus	LX	2000
194	Toyota	Tundra	2011
195	Audi	4000CS Quattro	1986
196	Chevrolet	Express 3500	2002
197	Mercedes-Benz	SL-Class	2003
198	Jaguar	XK Series	2000
199	Dodge	Ram Van 1500	1996
200	Lamborghini	Murciélago	2006
201	Mitsubishi	Lancer Evolution	2006
202	Buick	Park Avenue	1999
203	Chevrolet	Corvette	1961
204	Volkswagen	Golf	2005
205	MG	MGB	1977
206	Mercury	Milan	2010
207	Infiniti	EX	2009
208	Volkswagen	Passat	1995
209	Dodge	Dakota	1995
210	Mercedes-Benz	E-Class	1990
211	Citroën	CX	1974
212	Lincoln	Navigator	2006
213	Lexus	GS	1998
214	Saturn	S-Series	1996
215	Audi	A8	1998
216	GMC	Canyon	2008
217	Ford	Mustang	2002
218	Buick	LeSabre	2005
219	Pontiac	G6	2010
220	BMW	6 Series	2004
221	Mazda	MPV	2004
222	Mercury	Mountaineer	2008
223	Ferrari	F430	2008
224	Toyota	Tundra	2007
225	Subaru	Legacy	1998
226	Scion	tC	2012
227	Jeep	Liberty	2012
228	Dodge	Viper RT/10	1995
229	Chevrolet	Express 1500	1996
230	Toyota	Solara	2004
231	Saturn	Astra	2009
232	Pontiac	Torrent	2008
233	Mitsubishi	Truck	1990
234	Dodge	Ram 2500 Club	1996
235	Pontiac	Bonneville	1997
236	Chrysler	Crossfire	2008
237	Dodge	Caravan	2007
238	Plymouth	Grand Voyager	1993
239	Nissan	Murano	2005
240	Lexus	LX	2001
241	Ford	Five Hundred	2007
242	Ford	Aerostar	1994
243	Chrysler	Town & Country	2006
244	Hummer	H2 SUT	2006
245	Pontiac	Firefly	1987
246	Mazda	929	1993
247	Mercedes-Benz	C-Class	2007
248	Honda	Civic	1991
249	BMW	X5	2012
250	Hyundai	Azera	2011
251	Mitsubishi	Space	1984
252	Chevrolet	Express 3500	2010
253	Chevrolet	Camaro	1985
254	Infiniti	I	2001
255	Infiniti	G	2006
256	Toyota	Echo	2003
257	Mercedes-Benz	E-Class	2004
258	Ford	Escort	2004
259	Volvo	C30	2008
260	Dodge	Journey	2010
261	Chevrolet	TrailBlazer	2005
262	Mazda	Mazda2	2012
263	Cadillac	Sixty Special	1993
264	Buick	Roadmaster	1994
265	Toyota	Xtra	1993
266	Volkswagen	Fox	1988
267	Hummer	H2	2004
268	GMC	Savana 3500	2004
269	Ford	Explorer	2006
270	Ford	Ranger	1988
271	Lincoln	Continental	1990
272	Ford	E-Series	2011
273	Ford	Ranger	1994
274	Toyota	Sequoia	2003
275	Jaguar	XK Series	1997
276	Toyota	Tacoma Xtra	2000
277	Chevrolet	Lumina	1993
278	Chevrolet	Aveo	2008
279	Buick	LaCrosse	2007
280	Mercury	Montego	2007
281	Chevrolet	G-Series 3500	1997
282	Pontiac	GTO	1968
283	Ford	Mustang	1994
284	Bentley	Continental GTC	2011
285	Mitsubishi	Galant	1994
286	Saturn	Sky	2007
287	Mercedes-Benz	SLR McLaren	2006
288	Honda	Civic	1991
289	Mercury	Mariner	2007
290	Land Rover	Defender Ice Edition	2010
291	Pontiac	Fiero	1986
292	Audi	S8	2001
293	Dodge	Grand Caravan	2001
294	Dodge	Ram Van B150	1993
295	Isuzu	Hombre	1999
296	BMW	530	2005
297	Mercedes-Benz	E-Class	1997
298	Mazda	Mazda3	2009
299	Nissan	Quest	1997
300	Mitsubishi	Endeavor	2011
301	Acura	CL	2002
302	Acura	MDX	2003
303	Dodge	Ram	2008
304	BMW	X5	2011
305	Aston Martin	Rapide	2011
306	Dodge	Spirit	1994
307	Volkswagen	Routan	2010
308	Suzuki	SX4	2010
309	GMC	Terrain	2011
310	Volkswagen	New Beetle	2006
311	GMC	Sierra 1500	2012
312	Saturn	VUE	2006
313	Audi	S4	2002
314	Suzuki	Equator	2011
315	Hyundai	Sonata	1998
316	Aston Martin	Vanquish S	2005
317	Chevrolet	Suburban 1500	2000
318	Volvo	XC60	2009
319	Ford	Thunderbird	1972
320	Honda	Prelude	1995
321	Acura	ZDX	2010
322	Dodge	Grand Caravan	2007
323	Dodge	Grand Caravan	2002
324	Mazda	Mazda5	2009
325	Infiniti	G	2000
326	Hyundai	Azera	2011
327	Mitsubishi	Eclipse	1989
328	Suzuki	Vitara	1999
329	Mitsubishi	Pajero	1998
330	Nissan	Quest	2005
331	Pontiac	Bonneville	1964
332	Toyota	MR2	2000
333	Mercury	Topaz	1992
334	Lincoln	Continental	1998
335	Audi	S8	2002
336	Cadillac	Escalade ESV	2003
337	Ford	Ranger	1989
338	Volkswagen	Type 2	1990
339	Nissan	Altima	2006
340	Cadillac	CTS	2012
341	Mercedes-Benz	300SE	1993
342	Volkswagen	rio	1997
343	Jeep	Wrangler	2011
344	Maybach	57	2008
345	Buick	Century	1997
346	Subaru	Outback	2007
347	Dodge	Spirit	1993
348	GMC	Savana 3500	2005
349	Mercedes-Benz	C-Class	2008
350	Lincoln	Navigator L	2009
351	Ram	2500	2011
352	Ford	Escape	2012
353	Mitsubishi	Pajero	1997
354	Audi	A8	2003
355	Porsche	Carrera GT	2005
356	Jeep	Grand Cherokee	2012
357	Chevrolet	TrailBlazer	2003
358	Chevrolet	Caprice Classic	1993
359	Mitsubishi	Galant	1995
360	Mercedes-Benz	CL-Class	2005
361	Mitsubishi	Precis	1993
362	Pontiac	6000	1985
363	BMW	5 Series	2007
364	Isuzu	Trooper	1994
365	Mitsubishi	Eclipse	2007
366	Dodge	Ram Van 3500	1996
367	Alfa Romeo	Spider	1993
368	Suzuki	SJ 410	1984
369	Audi	TT	2004
370	Hummer	H2	2004
371	Infiniti	FX	2008
372	GMC	Envoy	1998
373	Chevrolet	S10	1992
374	Jaguar	X-Type	2004
375	Honda	Insight	2005
376	Ford	Escort	2001
377	Nissan	NV1500	2012
378	Volkswagen	Type 2	1989
379	Suzuki	Reno	2008
380	Lexus	LS Hybrid	2012
381	Volvo	XC70	2011
382	Pontiac	Firebird	2001
383	Dodge	Ram Van 2500	1998
384	Hyundai	Elantra	2008
385	Bentley	Continental	2006
386	Suzuki	Equator	2009
387	Mercedes-Benz	300SL	1993
388	Mazda	MX-5	2000
389	Ford	GT500	2008
390	Nissan	Frontier	2003
391	GMC	Yukon	2005
392	Mercedes-Benz	CL-Class	2008
393	Jeep	Cherokee	1993
394	Nissan	300ZX	1996
395	GMC	Sierra 3500	2005
396	Toyota	Tundra	2003
397	Mitsubishi	Endeavor	2008
398	Oldsmobile	Achieva	1992
399	Volkswagen	Jetta	1992
400	Lexus	SC	2006
401	Lincoln	Town Car	1988
402	Chrysler	Prowler	2001
403	Pontiac	G6	2007
404	Mitsubishi	Eclipse	1997
405	Ford	Escort	1994
406	Chevrolet	Tahoe	2004
407	Toyota	Avalon	2012
408	GMC	Yukon XL 1500	2004
409	Chevrolet	Aveo	2010
410	Subaru	Outback Sport	2002
411	Ford	F-Series Super Duty	2010
412	Pontiac	Grand Prix	1986
413	Kia	Amanti	2009
414	GMC	Safari	2000
415	BMW	M3	2011
416	Oldsmobile	Bravada	1992
417	Honda	Civic	1999
418	Mazda	Mazda6	2003
419	Mitsubishi	Starion	1987
420	Mitsubishi	Expo LRV	1996
421	Volkswagen	Beetle	1967
422	Audi	S8	2008
423	Chevrolet	Cobalt SS	2007
424	Chevrolet	Suburban 2500	2000
425	Mitsubishi	Cordia	1987
426	BMW	Z4	2003
427	Ford	Ranger	1993
428	Volvo	C30	2013
429	Chevrolet	Lumina	1994
430	Suzuki	Kizashi	2011
431	Dodge	Dakota Club	1992
432	Toyota	Highlander	2010
433	Toyota	Supra	1998
434	Chevrolet	Express 1500	2012
435	GMC	Sierra 3500	2002
436	Nissan	Sentra	2012
437	Mitsubishi	Lancer Evolution	2011
438	Jeep	Grand Cherokee	2007
439	Mercury	Sable	2003
440	Hyundai	Equus	2011
441	Chevrolet	Malibu	2006
442	Buick	LeSabre	2003
443	Ford	Ranger	2005
444	Saturn	S-Series	1997
445	Buick	Somerset	1987
446	Toyota	Tacoma Xtra	1998
447	Mercedes-Benz	E-Class	2010
448	GMC	3500 Club Coupe	1993
449	Audi	A4	2009
450	Lexus	LX	2011
451	Audi	V8	1992
452	Lexus	GS	2002
453	Chevrolet	Aveo	2009
454	Mazda	626	1991
455	Mazda	MX-5	1990
456	Suzuki	Equator	2010
457	Mazda	Mazdaspeed 3	2011
458	Honda	Accord	2009
459	Chrysler	Town & Country	2004
460	Lexus	GS	2002
461	Mercedes-Benz	C-Class	2004
462	Cadillac	CTS	2009
463	BMW	Z3	1999
464	Ford	Ranger	1995
465	Volvo	S80	2012
466	GMC	Vandura G3500	1995
467	Lincoln	MKZ	2009
468	Lexus	ES	1990
469	Alfa Romeo	Spider	1994
470	Cadillac	SRX	2007
471	Toyota	Prius	2004
472	Cadillac	Escalade	2010
473	Chevrolet	Silverado	1999
474	Chevrolet	Malibu	2002
475	Toyota	Celica	2004
476	Mercury	Cougar	1986
477	Mazda	Tribute	2008
478	Audi	90	1993
479	Ford	E150	2012
480	Maybach	62	2003
481	Pontiac	Safari	1988
482	Lexus	RX	2012
483	Suzuki	XL7	2008
484	Mercury	Cougar	1995
485	Pontiac	Trans Sport	1998
486	Mitsubishi	Mirage	1984
487	Ford	F250	1993
488	Ford	Crown Victoria	2009
489	Volkswagen	Golf	2001
490	Mazda	B-Series	1989
491	Porsche	968	1994
492	GMC	Yukon	2003
493	Ford	F-Series	2011
494	Jaguar	S-Type	2007
495	Isuzu	VehiCROSS	1999
496	Ford	Edge	2012
497	Mitsubishi	RVR	1993
498	Nissan	Pathfinder	1994
499	Chevrolet	S10 Blazer	1993
500	Lamborghini	Diablo	1991
\.


                                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000005375 14345657442 0015414 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE car_data;
--
-- Name: car_data; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE car_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE car_data OWNER TO postgres;

\connect car_data

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: car_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.car_data (
    id integer NOT NULL,
    car_make character varying(60) NOT NULL,
    car_model character varying(60) NOT NULL,
    car_model_year character varying(4) NOT NULL
);


ALTER TABLE public.car_data OWNER TO postgres;

--
-- Name: car_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.car_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.car_data_id_seq OWNER TO postgres;

--
-- Name: car_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.car_data_id_seq OWNED BY public.car_data.id;


--
-- Name: car_data id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car_data ALTER COLUMN id SET DEFAULT nextval('public.car_data_id_seq'::regclass);


--
-- Data for Name: car_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.car_data (id, car_make, car_model, car_model_year) FROM stdin;
\.
COPY public.car_data (id, car_make, car_model, car_model_year) FROM '$$PATH$$/3573.dat';

--
-- Name: car_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.car_data_id_seq', 1, false);


--
-- Name: car_data car_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car_data
    ADD CONSTRAINT car_data_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   