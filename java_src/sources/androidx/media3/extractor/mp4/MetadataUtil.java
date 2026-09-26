package androidx.media3.extractor.mp4;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.metadata.id3.ApicFrame;
import androidx.media3.extractor.metadata.id3.CommentFrame;
import androidx.media3.extractor.metadata.id3.Id3Frame;
import androidx.media3.extractor.metadata.id3.InternalFrame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.google.common.collect.a0;

/* JADX INFO: loaded from: classes5.dex */
final class MetadataUtil {
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
    private static Id3Frame e(ParsableByteArray parsableByteArray, int i10) {
        String strC = null;
        String strC2 = null;
        int i11 = -1;
        int i12 = -1;
        while (parsableByteArray.f() < i10) {
            int iF = parsableByteArray.f();
            int iQ = parsableByteArray.q();
            int iQ2 = parsableByteArray.q();
            parsableByteArray.V(4);
            if (iQ2 == 1835360622) {
                strC = parsableByteArray.C(iQ - 12);
            } else if (iQ2 == 1851878757) {
                strC2 = parsableByteArray.C(iQ - 12);
            } else {
                if (iQ2 == 1684108385) {
                    i11 = iF;
                    i12 = iQ;
                }
                parsableByteArray.V(iQ - 12);
            }
        }
        if (strC == null || strC2 == null || i11 == -1) {
            return null;
        }
        parsableByteArray.U(i11);
        parsableByteArray.V(16);
        return new InternalFrame(strC, strC2, parsableByteArray.C(i12 - 16));
    }

    private static int j(ParsableByteArray parsableByteArray) {
        parsableByteArray.V(4);
        if (parsableByteArray.q() == 1684108385) {
            parsableByteArray.V(8);
            return parsableByteArray.H();
        }
        Log.i(TAG, "Failed to parse uint8 attribute value");
        return -1;
    }

    public static void k(int i10, GaplessInfoHolder gaplessInfoHolder, Format.Builder builder) {
        if (i10 == 1 && gaplessInfoHolder.a()) {
            builder.P(gaplessInfoHolder.encoderDelay).Q(gaplessInfoHolder.encoderPadding);
        }
    }

    public static void l(int i10, @Nullable Metadata metadata, @Nullable Metadata metadata2, Format.Builder builder, Metadata... metadataArr) {
        Metadata metadata3 = new Metadata(new Metadata.Entry[0]);
        if (i10 != 1 || metadata == null) {
            metadata = metadata3;
        }
        if (metadata2 != null) {
            for (int i11 = 0; i11 < metadata2.h(); i11++) {
                Metadata.Entry entryG = metadata2.g(i11);
                if (entryG instanceof MdtaMetadataEntry) {
                    MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entryG;
                    if (!mdtaMetadataEntry.key.equals("com.android.capture.fps")) {
                        metadata = metadata.a(mdtaMetadataEntry);
                    } else if (i10 == 2) {
                        metadata = metadata.a(mdtaMetadataEntry);
                    }
                }
            }
        }
        for (Metadata metadata4 : metadataArr) {
            metadata = metadata.c(metadata4);
        }
        if (metadata.h() > 0) {
            builder.Z(metadata);
        }
    }

    private MetadataUtil() {
    }

    @Nullable
    private static CommentFrame a(int i10, ParsableByteArray parsableByteArray) {
        int iQ = parsableByteArray.q();
        if (parsableByteArray.q() == 1684108385) {
            parsableByteArray.V(8);
            String strC = parsableByteArray.C(iQ - 16);
            return new CommentFrame("und", strC, strC);
        }
        Log.i(TAG, "Failed to parse comment attribute: " + Atom.a(i10));
        return null;
    }

    @Nullable
    private static ApicFrame b(ParsableByteArray parsableByteArray) {
        String str;
        int iQ = parsableByteArray.q();
        if (parsableByteArray.q() == 1684108385) {
            int iB = Atom.b(parsableByteArray.q());
            if (iB == 13) {
                str = "image/jpeg";
            } else if (iB == 14) {
                str = MimeTypes.IMAGE_PNG;
            } else {
                str = null;
            }
            if (str == null) {
                Log.i(TAG, "Unrecognized cover art flags: " + iB);
                return null;
            }
            parsableByteArray.V(4);
            int i10 = iQ - 16;
            byte[] bArr = new byte[i10];
            parsableByteArray.l(bArr, 0, i10);
            return new ApicFrame(str, null, 3, bArr);
        }
        Log.i(TAG, "Failed to parse cover art attribute");
        return null;
    }

    @Nullable
    public static Metadata.Entry c(ParsableByteArray parsableByteArray) {
        int iF = parsableByteArray.f() + parsableByteArray.q();
        int iQ = parsableByteArray.q();
        int i10 = (iQ >> 24) & 255;
        try {
            if (i10 != TYPE_TOP_BYTE_COPYRIGHT && i10 != 253) {
                if (iQ == TYPE_GENRE) {
                    TextInformationFrame textInformationFrameG = g(parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameG;
                }
                if (iQ == TYPE_DISK_NUMBER) {
                    TextInformationFrame textInformationFrameD = d(iQ, "TPOS", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameD;
                }
                if (iQ == TYPE_TRACK_NUMBER) {
                    TextInformationFrame textInformationFrameD2 = d(iQ, "TRCK", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameD2;
                }
                if (iQ == TYPE_TEMPO) {
                    Id3Frame id3FrameI = i(iQ, "TBPM", parsableByteArray, true, false);
                    parsableByteArray.U(iF);
                    return id3FrameI;
                }
                if (iQ == TYPE_COMPILATION) {
                    Id3Frame id3FrameI2 = i(iQ, "TCMP", parsableByteArray, true, true);
                    parsableByteArray.U(iF);
                    return id3FrameI2;
                }
                if (iQ == TYPE_COVER_ART) {
                    ApicFrame apicFrameB = b(parsableByteArray);
                    parsableByteArray.U(iF);
                    return apicFrameB;
                }
                if (iQ == TYPE_ALBUM_ARTIST) {
                    TextInformationFrame textInformationFrameH = h(iQ, "TPE2", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameH;
                }
                if (iQ == TYPE_SORT_TRACK_NAME) {
                    TextInformationFrame textInformationFrameH2 = h(iQ, "TSOT", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameH2;
                }
                if (iQ == TYPE_SORT_ALBUM) {
                    TextInformationFrame textInformationFrameH3 = h(iQ, "TSO2", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameH3;
                }
                if (iQ == TYPE_SORT_ARTIST) {
                    TextInformationFrame textInformationFrameH4 = h(iQ, "TSOA", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameH4;
                }
                if (iQ == TYPE_SORT_ALBUM_ARTIST) {
                    TextInformationFrame textInformationFrameH5 = h(iQ, "TSOP", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameH5;
                }
                if (iQ == TYPE_SORT_COMPOSER) {
                    TextInformationFrame textInformationFrameH6 = h(iQ, "TSOC", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameH6;
                }
                if (iQ == TYPE_RATING) {
                    Id3Frame id3FrameI3 = i(iQ, "ITUNESADVISORY", parsableByteArray, false, false);
                    parsableByteArray.U(iF);
                    return id3FrameI3;
                }
                if (iQ == TYPE_GAPLESS_ALBUM) {
                    Id3Frame id3FrameI4 = i(iQ, "ITUNESGAPLESS", parsableByteArray, false, true);
                    parsableByteArray.U(iF);
                    return id3FrameI4;
                }
                if (iQ == TYPE_TV_SORT_SHOW) {
                    TextInformationFrame textInformationFrameH7 = h(iQ, "TVSHOWSORT", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameH7;
                }
                if (iQ == TYPE_TV_SHOW) {
                    TextInformationFrame textInformationFrameH8 = h(iQ, "TVSHOW", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameH8;
                }
                if (iQ == TYPE_INTERNAL) {
                    Id3Frame id3FrameE = e(parsableByteArray, iF);
                    parsableByteArray.U(iF);
                    return id3FrameE;
                }
            } else {
                int i11 = 16777215 & iQ;
                if (i11 == SHORT_TYPE_COMMENT) {
                    CommentFrame commentFrameA = a(iQ, parsableByteArray);
                    parsableByteArray.U(iF);
                    return commentFrameA;
                }
                if (i11 != SHORT_TYPE_NAME_1 && i11 != SHORT_TYPE_NAME_2) {
                    if (i11 != SHORT_TYPE_COMPOSER_1 && i11 != SHORT_TYPE_COMPOSER_2) {
                        if (i11 == SHORT_TYPE_YEAR) {
                            TextInformationFrame textInformationFrameH9 = h(iQ, "TDRC", parsableByteArray);
                            parsableByteArray.U(iF);
                            return textInformationFrameH9;
                        }
                        if (i11 == SHORT_TYPE_ARTIST) {
                            TextInformationFrame textInformationFrameH10 = h(iQ, "TPE1", parsableByteArray);
                            parsableByteArray.U(iF);
                            return textInformationFrameH10;
                        }
                        if (i11 == SHORT_TYPE_ENCODER) {
                            TextInformationFrame textInformationFrameH11 = h(iQ, "TSSE", parsableByteArray);
                            parsableByteArray.U(iF);
                            return textInformationFrameH11;
                        }
                        if (i11 == SHORT_TYPE_ALBUM) {
                            TextInformationFrame textInformationFrameH12 = h(iQ, "TALB", parsableByteArray);
                            parsableByteArray.U(iF);
                            return textInformationFrameH12;
                        }
                        if (i11 == SHORT_TYPE_LYRICS) {
                            TextInformationFrame textInformationFrameH13 = h(iQ, "USLT", parsableByteArray);
                            parsableByteArray.U(iF);
                            return textInformationFrameH13;
                        }
                        if (i11 == SHORT_TYPE_GENRE) {
                            TextInformationFrame textInformationFrameH14 = h(iQ, "TCON", parsableByteArray);
                            parsableByteArray.U(iF);
                            return textInformationFrameH14;
                        }
                        if (i11 == TYPE_GROUPING) {
                            TextInformationFrame textInformationFrameH15 = h(iQ, "TIT1", parsableByteArray);
                            parsableByteArray.U(iF);
                            return textInformationFrameH15;
                        }
                    } else {
                        TextInformationFrame textInformationFrameH16 = h(iQ, "TCOM", parsableByteArray);
                        parsableByteArray.U(iF);
                        return textInformationFrameH16;
                    }
                } else {
                    TextInformationFrame textInformationFrameH17 = h(iQ, "TIT2", parsableByteArray);
                    parsableByteArray.U(iF);
                    return textInformationFrameH17;
                }
            }
            Log.b(TAG, "Skipped unknown metadata entry: " + Atom.a(iQ));
            parsableByteArray.U(iF);
            return null;
        } catch (Throwable th) {
            parsableByteArray.U(iF);
            throw th;
        }
    }

    @Nullable
    private static TextInformationFrame d(int i10, String str, ParsableByteArray parsableByteArray) {
        int iQ = parsableByteArray.q();
        if (parsableByteArray.q() == 1684108385 && iQ >= 22) {
            parsableByteArray.V(10);
            int iN = parsableByteArray.N();
            if (iN > 0) {
                String str2 = "" + iN;
                int iN2 = parsableByteArray.N();
                if (iN2 > 0) {
                    str2 = str2 + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + iN2;
                }
                return new TextInformationFrame(str, (String) null, a0.y(str2));
            }
        }
        Log.i(TAG, "Failed to parse index/count attribute: " + Atom.a(i10));
        return null;
    }

    @Nullable
    public static MdtaMetadataEntry f(ParsableByteArray parsableByteArray, int i10, String str) {
        while (true) {
            int iF = parsableByteArray.f();
            if (iF < i10) {
                int iQ = parsableByteArray.q();
                if (parsableByteArray.q() == 1684108385) {
                    int iQ2 = parsableByteArray.q();
                    int iQ3 = parsableByteArray.q();
                    int i11 = iQ - 16;
                    byte[] bArr = new byte[i11];
                    parsableByteArray.l(bArr, 0, i11);
                    return new MdtaMetadataEntry(str, bArr, iQ3, iQ2);
                }
                parsableByteArray.U(iF + iQ);
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0011  */
    @Nullable
    private static TextInformationFrame g(ParsableByteArray parsableByteArray) {
        String str;
        int iJ = j(parsableByteArray);
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
            return new TextInformationFrame("TCON", (String) null, a0.y(str));
        }
        Log.i(TAG, "Failed to parse standard genre code");
        return null;
    }

    @Nullable
    private static TextInformationFrame h(int i10, String str, ParsableByteArray parsableByteArray) {
        int iQ = parsableByteArray.q();
        if (parsableByteArray.q() == 1684108385) {
            parsableByteArray.V(8);
            return new TextInformationFrame(str, (String) null, a0.y(parsableByteArray.C(iQ - 16)));
        }
        Log.i(TAG, "Failed to parse text attribute: " + Atom.a(i10));
        return null;
    }

    @Nullable
    private static Id3Frame i(int i10, String str, ParsableByteArray parsableByteArray, boolean z6, boolean z10) {
        int iJ = j(parsableByteArray);
        if (z10) {
            iJ = Math.min(1, iJ);
        }
        if (iJ >= 0) {
            if (z6) {
                return new TextInformationFrame(str, (String) null, a0.y(Integer.toString(iJ)));
            }
            return new CommentFrame("und", str, Integer.toString(iJ));
        }
        Log.i(TAG, "Failed to parse uint8 attribute: " + Atom.a(i10));
        return null;
    }
}
