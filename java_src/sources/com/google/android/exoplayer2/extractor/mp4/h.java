package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.t;

/* JADX INFO: loaded from: classes9.dex */
final class h {
    private static final int PICTURE_TYPE_FRONT_COVER = 3;
    private static final int SHORT_TYPE_ALBUM = 6384738;
    private static final int SHORT_TYPE_ARTIST = 4280916;
    private static final int SHORT_TYPE_COMMENT = 6516084;
    private static final int SHORT_TYPE_COMPOSER_1 = 6516589;
    private static final int SHORT_TYPE_COMPOSER_2 = 7828084;
    private static final int SHORT_TYPE_ENCODER = 7630703;
    private static final int SHORT_TYPE_GENRE = 6776174;
    private static final int SHORT_TYPE_LYRICS = 7108978;
    private static final int SHORT_TYPE_NAME_1 = 7233901;
    private static final int SHORT_TYPE_NAME_2 = 7631467;
    private static final int SHORT_TYPE_YEAR = 6578553;

    @VisibleForTesting
    static final String[] STANDARD_GENRES = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};
    private static final String TAG = "MetadataUtil";
    private static final int TYPE_ALBUM_ARTIST = 1631670868;
    private static final int TYPE_COMPILATION = 1668311404;
    private static final int TYPE_COVER_ART = 1668249202;
    private static final int TYPE_DISK_NUMBER = 1684632427;
    private static final int TYPE_GAPLESS_ALBUM = 1885823344;
    private static final int TYPE_GENRE = 1735291493;
    private static final int TYPE_GROUPING = 6779504;
    private static final int TYPE_INTERNAL = 757935405;
    private static final int TYPE_RATING = 1920233063;
    private static final int TYPE_SORT_ALBUM = 1936679276;
    private static final int TYPE_SORT_ALBUM_ARTIST = 1936679265;
    private static final int TYPE_SORT_ARTIST = 1936679282;
    private static final int TYPE_SORT_COMPOSER = 1936679791;
    private static final int TYPE_SORT_TRACK_NAME = 1936682605;
    private static final int TYPE_TEMPO = 1953329263;
    private static final int TYPE_TOP_BYTE_COPYRIGHT = 169;
    private static final int TYPE_TOP_BYTE_REPLACEMENT = 253;
    private static final int TYPE_TRACK_NUMBER = 1953655662;
    private static final int TYPE_TV_SHOW = 1953919848;
    private static final int TYPE_TV_SORT_SHOW = 1936683886;

    @Nullable
    private static Id3Frame e(c0 c0Var, int i10) {
        String strY = null;
        String strY2 = null;
        int i11 = -1;
        int i12 = -1;
        while (c0Var.e() < i10) {
            int iE = c0Var.e();
            int iN = c0Var.n();
            int iN2 = c0Var.n();
            c0Var.Q(4);
            if (iN2 == 1835360622) {
                strY = c0Var.y(iN - 12);
            } else if (iN2 == 1851878757) {
                strY2 = c0Var.y(iN - 12);
            } else {
                if (iN2 == 1684108385) {
                    i11 = iE;
                    i12 = iN;
                }
                c0Var.Q(iN - 12);
            }
        }
        if (strY == null || strY2 == null || i11 == -1) {
            return null;
        }
        c0Var.P(i11);
        c0Var.Q(16);
        return new InternalFrame(strY, strY2, c0Var.y(i12 - 16));
    }

    private static int j(c0 c0Var) {
        c0Var.Q(4);
        if (c0Var.n() == 1684108385) {
            c0Var.Q(8);
            return c0Var.D();
        }
        t.i(TAG, "Failed to parse uint8 attribute value");
        return -1;
    }

    public static void k(int i10, x xVar, a2.b bVar) {
        if (i10 == 1 && xVar.a()) {
            bVar.N(xVar.encoderDelay).O(xVar.encoderPadding);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003c  */
    public static void l(int i10, @Nullable Metadata metadata, @Nullable Metadata metadata2, a2.b bVar, Metadata... metadataArr) {
        Metadata metadata3 = new Metadata(new Metadata.Entry[0]);
        if (i10 == 1) {
            if (metadata == null) {
                metadata = metadata3;
                break;
            }
        } else {
            if (i10 != 2 || metadata2 == null) {
                metadata = metadata3;
                break;
            }
            int i11 = 0;
            while (true) {
                if (i11 >= metadata2.h()) {
                    metadata = metadata3;
                    break;
                }
                Metadata.Entry entryG = metadata2.g(i11);
                if (entryG instanceof MdtaMetadataEntry) {
                    MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entryG;
                    if ("com.android.capture.fps".equals(mdtaMetadataEntry.key)) {
                        metadata = new Metadata(mdtaMetadataEntry);
                        break;
                    }
                }
                i11++;
            }
        }
        for (Metadata metadata4 : metadataArr) {
            metadata = metadata.c(metadata4);
        }
        if (metadata.h() > 0) {
            bVar.X(metadata);
        }
    }

    @Nullable
    private static CommentFrame a(int i10, c0 c0Var) {
        int iN = c0Var.n();
        if (c0Var.n() == 1684108385) {
            c0Var.Q(8);
            String strY = c0Var.y(iN - 16);
            return new CommentFrame("und", strY, strY);
        }
        t.i(TAG, "Failed to parse comment attribute: " + a.a(i10));
        return null;
    }

    @Nullable
    private static ApicFrame b(c0 c0Var) {
        String str;
        int iN = c0Var.n();
        if (c0Var.n() == 1684108385) {
            int iB = a.b(c0Var.n());
            if (iB == 13) {
                str = "image/jpeg";
            } else if (iB == 14) {
                str = MimeTypes.IMAGE_PNG;
            } else {
                str = null;
            }
            if (str == null) {
                t.i(TAG, "Unrecognized cover art flags: " + iB);
                return null;
            }
            c0Var.Q(4);
            int i10 = iN - 16;
            byte[] bArr = new byte[i10];
            c0Var.j(bArr, 0, i10);
            return new ApicFrame(str, null, 3, bArr);
        }
        t.i(TAG, "Failed to parse cover art attribute");
        return null;
    }

    @Nullable
    public static Metadata.Entry c(c0 c0Var) {
        int iE = c0Var.e() + c0Var.n();
        int iN = c0Var.n();
        int i10 = (iN >> 24) & 255;
        try {
            if (i10 != TYPE_TOP_BYTE_COPYRIGHT && i10 != 253) {
                if (iN == TYPE_GENRE) {
                    TextInformationFrame textInformationFrameG = g(c0Var);
                    c0Var.P(iE);
                    return textInformationFrameG;
                }
                if (iN == TYPE_DISK_NUMBER) {
                    TextInformationFrame textInformationFrameD = d(iN, "TPOS", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameD;
                }
                if (iN == TYPE_TRACK_NUMBER) {
                    TextInformationFrame textInformationFrameD2 = d(iN, "TRCK", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameD2;
                }
                if (iN == TYPE_TEMPO) {
                    Id3Frame id3FrameI = i(iN, "TBPM", c0Var, true, false);
                    c0Var.P(iE);
                    return id3FrameI;
                }
                if (iN == TYPE_COMPILATION) {
                    Id3Frame id3FrameI2 = i(iN, "TCMP", c0Var, true, true);
                    c0Var.P(iE);
                    return id3FrameI2;
                }
                if (iN == TYPE_COVER_ART) {
                    ApicFrame apicFrameB = b(c0Var);
                    c0Var.P(iE);
                    return apicFrameB;
                }
                if (iN == TYPE_ALBUM_ARTIST) {
                    TextInformationFrame textInformationFrameH = h(iN, "TPE2", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameH;
                }
                if (iN == TYPE_SORT_TRACK_NAME) {
                    TextInformationFrame textInformationFrameH2 = h(iN, "TSOT", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameH2;
                }
                if (iN == TYPE_SORT_ALBUM) {
                    TextInformationFrame textInformationFrameH3 = h(iN, "TSO2", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameH3;
                }
                if (iN == TYPE_SORT_ARTIST) {
                    TextInformationFrame textInformationFrameH4 = h(iN, "TSOA", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameH4;
                }
                if (iN == TYPE_SORT_ALBUM_ARTIST) {
                    TextInformationFrame textInformationFrameH5 = h(iN, "TSOP", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameH5;
                }
                if (iN == TYPE_SORT_COMPOSER) {
                    TextInformationFrame textInformationFrameH6 = h(iN, "TSOC", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameH6;
                }
                if (iN == TYPE_RATING) {
                    Id3Frame id3FrameI3 = i(iN, "ITUNESADVISORY", c0Var, false, false);
                    c0Var.P(iE);
                    return id3FrameI3;
                }
                if (iN == TYPE_GAPLESS_ALBUM) {
                    Id3Frame id3FrameI4 = i(iN, "ITUNESGAPLESS", c0Var, false, true);
                    c0Var.P(iE);
                    return id3FrameI4;
                }
                if (iN == TYPE_TV_SORT_SHOW) {
                    TextInformationFrame textInformationFrameH7 = h(iN, "TVSHOWSORT", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameH7;
                }
                if (iN == TYPE_TV_SHOW) {
                    TextInformationFrame textInformationFrameH8 = h(iN, "TVSHOW", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameH8;
                }
                if (iN == TYPE_INTERNAL) {
                    Id3Frame id3FrameE = e(c0Var, iE);
                    c0Var.P(iE);
                    return id3FrameE;
                }
            } else {
                int i11 = 16777215 & iN;
                if (i11 == SHORT_TYPE_COMMENT) {
                    CommentFrame commentFrameA = a(iN, c0Var);
                    c0Var.P(iE);
                    return commentFrameA;
                }
                if (i11 != SHORT_TYPE_NAME_1 && i11 != SHORT_TYPE_NAME_2) {
                    if (i11 != SHORT_TYPE_COMPOSER_1 && i11 != SHORT_TYPE_COMPOSER_2) {
                        if (i11 == SHORT_TYPE_YEAR) {
                            TextInformationFrame textInformationFrameH9 = h(iN, "TDRC", c0Var);
                            c0Var.P(iE);
                            return textInformationFrameH9;
                        }
                        if (i11 == SHORT_TYPE_ARTIST) {
                            TextInformationFrame textInformationFrameH10 = h(iN, "TPE1", c0Var);
                            c0Var.P(iE);
                            return textInformationFrameH10;
                        }
                        if (i11 == SHORT_TYPE_ENCODER) {
                            TextInformationFrame textInformationFrameH11 = h(iN, "TSSE", c0Var);
                            c0Var.P(iE);
                            return textInformationFrameH11;
                        }
                        if (i11 == SHORT_TYPE_ALBUM) {
                            TextInformationFrame textInformationFrameH12 = h(iN, "TALB", c0Var);
                            c0Var.P(iE);
                            return textInformationFrameH12;
                        }
                        if (i11 == SHORT_TYPE_LYRICS) {
                            TextInformationFrame textInformationFrameH13 = h(iN, "USLT", c0Var);
                            c0Var.P(iE);
                            return textInformationFrameH13;
                        }
                        if (i11 == SHORT_TYPE_GENRE) {
                            TextInformationFrame textInformationFrameH14 = h(iN, "TCON", c0Var);
                            c0Var.P(iE);
                            return textInformationFrameH14;
                        }
                        if (i11 == TYPE_GROUPING) {
                            TextInformationFrame textInformationFrameH15 = h(iN, "TIT1", c0Var);
                            c0Var.P(iE);
                            return textInformationFrameH15;
                        }
                    } else {
                        TextInformationFrame textInformationFrameH16 = h(iN, "TCOM", c0Var);
                        c0Var.P(iE);
                        return textInformationFrameH16;
                    }
                } else {
                    TextInformationFrame textInformationFrameH17 = h(iN, "TIT2", c0Var);
                    c0Var.P(iE);
                    return textInformationFrameH17;
                }
            }
            t.b(TAG, "Skipped unknown metadata entry: " + a.a(iN));
            c0Var.P(iE);
            return null;
        } catch (Throwable th) {
            c0Var.P(iE);
            throw th;
        }
    }

    @Nullable
    private static TextInformationFrame d(int i10, String str, c0 c0Var) {
        int iN = c0Var.n();
        if (c0Var.n() == 1684108385 && iN >= 22) {
            c0Var.Q(10);
            int iJ = c0Var.J();
            if (iJ > 0) {
                String str2 = "" + iJ;
                int iJ2 = c0Var.J();
                if (iJ2 > 0) {
                    str2 = str2 + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + iJ2;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        t.i(TAG, "Failed to parse index/count attribute: " + a.a(i10));
        return null;
    }

    @Nullable
    public static MdtaMetadataEntry f(c0 c0Var, int i10, String str) {
        while (true) {
            int iE = c0Var.e();
            if (iE < i10) {
                int iN = c0Var.n();
                if (c0Var.n() == 1684108385) {
                    int iN2 = c0Var.n();
                    int iN3 = c0Var.n();
                    int i11 = iN - 16;
                    byte[] bArr = new byte[i11];
                    c0Var.j(bArr, 0, i11);
                    return new MdtaMetadataEntry(str, bArr, iN3, iN2);
                }
                c0Var.P(iE + iN);
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0011  */
    @Nullable
    private static TextInformationFrame g(c0 c0Var) {
        String str;
        int iJ = j(c0Var);
        if (iJ > 0) {
            String[] strArr = STANDARD_GENRES;
            if (iJ <= strArr.length) {
                str = strArr[iJ - 1];
            } else {
                str = null;
            }
        } else {
            str = null;
        }
        if (str != null) {
            return new TextInformationFrame("TCON", null, str);
        }
        t.i(TAG, "Failed to parse standard genre code");
        return null;
    }

    @Nullable
    private static TextInformationFrame h(int i10, String str, c0 c0Var) {
        int iN = c0Var.n();
        if (c0Var.n() == 1684108385) {
            c0Var.Q(8);
            return new TextInformationFrame(str, null, c0Var.y(iN - 16));
        }
        t.i(TAG, "Failed to parse text attribute: " + a.a(i10));
        return null;
    }

    @Nullable
    private static Id3Frame i(int i10, String str, c0 c0Var, boolean z6, boolean z10) {
        int iJ = j(c0Var);
        if (z10) {
            iJ = Math.min(1, iJ);
        }
        if (iJ >= 0) {
            if (z6) {
                return new TextInformationFrame(str, null, Integer.toString(iJ));
            }
            return new CommentFrame("und", str, Integer.toString(iJ));
        }
        t.i(TAG, "Failed to parse uint8 attribute: " + a.a(i10));
        return null;
    }
}
