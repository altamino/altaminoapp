package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.gms.internal.ads.zzpo;

/* loaded from: classes2.dex */
final class zzov {
    private static final int zzbev = zzsy.zzay("nam");
    private static final int zzbew = zzsy.zzay("trk");
    private static final int zzbex = zzsy.zzay("cmt");
    private static final int zzbey = zzsy.zzay("day");
    private static final int zzbez = zzsy.zzay("ART");
    private static final int zzbfa = zzsy.zzay("too");
    private static final int zzbfb = zzsy.zzay("alb");
    private static final int zzbfc = zzsy.zzay("com");
    private static final int zzbfd = zzsy.zzay("wrt");
    private static final int zzbfe = zzsy.zzay("lyr");
    private static final int zzbff = zzsy.zzay("gen");
    private static final int zzbfg = zzsy.zzay("covr");
    private static final int zzbfh = zzsy.zzay("gnre");
    private static final int zzbfi = zzsy.zzay("grp");
    private static final int zzbfj = zzsy.zzay("disk");
    private static final int zzbfk = zzsy.zzay("trkn");
    private static final int zzbfl = zzsy.zzay("tmpo");
    private static final int zzbfm = zzsy.zzay("cpil");
    private static final int zzbfn = zzsy.zzay("aART");
    private static final int zzbfo = zzsy.zzay("sonm");
    private static final int zzbfp = zzsy.zzay("soal");
    private static final int zzbfq = zzsy.zzay("soar");
    private static final int zzbfr = zzsy.zzay("soaa");
    private static final int zzbfs = zzsy.zzay("soco");
    private static final int zzbft = zzsy.zzay("rtng");
    private static final int zzbfu = zzsy.zzay("pgap");
    private static final int zzbfv = zzsy.zzay("sosn");
    private static final int zzbfw = zzsy.zzay("tvsh");
    private static final int zzbfx = zzsy.zzay(InternalFrame.ID);
    private static final String[] zzbfy = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    public static zzpo.zza zzd(zzst zzstVar) {
        zzpw zzpwVar;
        int position = zzstVar.getPosition() + zzstVar.readInt();
        int i = zzstVar.readInt();
        int i2 = i >>> 24;
        zzpo.zza zzpsVar = null;
        try {
            if (i2 == 169 || i2 == 65533) {
                int i3 = 16777215 & i;
                if (i3 == zzbex) {
                    int i4 = zzstVar.readInt();
                    if (zzstVar.readInt() == zzoj.zzbdp) {
                        zzstVar.zzac(8);
                        String strZzbp = zzstVar.zzbp(i4 - 16);
                        zzpsVar = new zzps(C.LANGUAGE_UNDETERMINED, strZzbp, strZzbp);
                    } else {
                        String strValueOf = String.valueOf(zzoj.zzu(i));
                        Log.w("MetadataUtil", strValueOf.length() != 0 ? "Failed to parse comment attribute: ".concat(strValueOf) : new String("Failed to parse comment attribute: "));
                    }
                    return zzpsVar;
                }
                if (i3 != zzbev && i3 != zzbew) {
                    if (i3 != zzbfc && i3 != zzbfd) {
                        if (i3 == zzbey) {
                            return zza(i, "TDRC", zzstVar);
                        }
                        if (i3 == zzbez) {
                            return zza(i, "TPE1", zzstVar);
                        }
                        if (i3 == zzbfa) {
                            return zza(i, "TSSE", zzstVar);
                        }
                        if (i3 == zzbfb) {
                            return zza(i, "TALB", zzstVar);
                        }
                        if (i3 == zzbfe) {
                            return zza(i, "USLT", zzstVar);
                        }
                        if (i3 == zzbff) {
                            return zza(i, "TCON", zzstVar);
                        }
                        if (i3 == zzbfi) {
                            return zza(i, "TIT1", zzstVar);
                        }
                    }
                    return zza(i, "TCOM", zzstVar);
                }
                return zza(i, "TIT2", zzstVar);
            }
            if (i == zzbfh) {
                int iZze = zze(zzstVar);
                String str = (iZze <= 0 || iZze > zzbfy.length) ? null : zzbfy[iZze - 1];
                if (str != null) {
                    zzpwVar = new zzpw("TCON", null, str);
                } else {
                    Log.w("MetadataUtil", "Failed to parse standard genre code");
                    zzpwVar = null;
                }
                return zzpwVar;
            }
            if (i == zzbfj) {
                return zzb(i, "TPOS", zzstVar);
            }
            if (i == zzbfk) {
                return zzb(i, "TRCK", zzstVar);
            }
            if (i == zzbfl) {
                return zza(i, "TBPM", zzstVar, true, false);
            }
            if (i == zzbfm) {
                return zza(i, "TCMP", zzstVar, true, true);
            }
            if (i == zzbfg) {
                int i5 = zzstVar.readInt();
                if (zzstVar.readInt() == zzoj.zzbdp) {
                    int iZzax = zzoj.zzax(zzstVar.readInt());
                    String str2 = iZzax == 13 ? "image/jpeg" : iZzax == 14 ? "image/png" : null;
                    if (str2 == null) {
                        StringBuilder sb = new StringBuilder(41);
                        sb.append("Unrecognized cover art flags: ");
                        sb.append(iZzax);
                        Log.w("MetadataUtil", sb.toString());
                    } else {
                        zzstVar.zzac(4);
                        byte[] bArr = new byte[i5 - 16];
                        zzstVar.zzb(bArr, 0, bArr.length);
                        zzpsVar = new zzpq(str2, null, 3, bArr);
                    }
                } else {
                    Log.w("MetadataUtil", "Failed to parse cover art attribute");
                }
                return zzpsVar;
            }
            if (i == zzbfn) {
                return zza(i, "TPE2", zzstVar);
            }
            if (i == zzbfo) {
                return zza(i, "TSOT", zzstVar);
            }
            if (i == zzbfp) {
                return zza(i, "TSO2", zzstVar);
            }
            if (i == zzbfq) {
                return zza(i, "TSOA", zzstVar);
            }
            if (i == zzbfr) {
                return zza(i, "TSOP", zzstVar);
            }
            if (i == zzbfs) {
                return zza(i, "TSOC", zzstVar);
            }
            if (i == zzbft) {
                return zza(i, "ITUNESADVISORY", zzstVar, false, false);
            }
            if (i == zzbfu) {
                return zza(i, "ITUNESGAPLESS", zzstVar, false, true);
            }
            if (i == zzbfv) {
                return zza(i, "TVSHOWSORT", zzstVar);
            }
            if (i == zzbfw) {
                return zza(i, "TVSHOW", zzstVar);
            }
            if (i == zzbfx) {
                String strZzbp2 = null;
                String strZzbp3 = null;
                int i6 = -1;
                int i7 = -1;
                while (zzstVar.getPosition() < position) {
                    int position2 = zzstVar.getPosition();
                    int i8 = zzstVar.readInt();
                    int i9 = zzstVar.readInt();
                    zzstVar.zzac(4);
                    if (i9 == zzoj.zzbdn) {
                        strZzbp2 = zzstVar.zzbp(i8 - 12);
                    } else if (i9 == zzoj.zzbdo) {
                        strZzbp3 = zzstVar.zzbp(i8 - 12);
                    } else {
                        if (i9 == zzoj.zzbdp) {
                            i6 = position2;
                            i7 = i8;
                        }
                        zzstVar.zzac(i8 - 12);
                    }
                }
                if ("com.apple.iTunes".equals(strZzbp2) && "iTunSMPB".equals(strZzbp3) && i6 != -1) {
                    zzstVar.setPosition(i6);
                    zzstVar.zzac(16);
                    zzpsVar = new zzps(C.LANGUAGE_UNDETERMINED, strZzbp3, zzstVar.zzbp(i7 - 16));
                }
                return zzpsVar;
            }
            String strValueOf2 = String.valueOf(zzoj.zzu(i));
            Log.d("MetadataUtil", strValueOf2.length() != 0 ? "Skipped unknown metadata entry: ".concat(strValueOf2) : new String("Skipped unknown metadata entry: "));
            return null;
        } finally {
            zzstVar.setPosition(position);
        }
    }

    private static zzpw zza(int i, String str, zzst zzstVar) {
        int i2 = zzstVar.readInt();
        if (zzstVar.readInt() == zzoj.zzbdp) {
            zzstVar.zzac(8);
            return new zzpw(str, null, zzstVar.zzbp(i2 - 16));
        }
        String strValueOf = String.valueOf(zzoj.zzu(i));
        Log.w("MetadataUtil", strValueOf.length() != 0 ? "Failed to parse text attribute: ".concat(strValueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    private static zzpv zza(int i, String str, zzst zzstVar, boolean z, boolean z2) {
        int iZze = zze(zzstVar);
        if (z2) {
            iZze = Math.min(1, iZze);
        }
        if (iZze >= 0) {
            if (z) {
                return new zzpw(str, null, Integer.toString(iZze));
            }
            return new zzps(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iZze));
        }
        String strValueOf = String.valueOf(zzoj.zzu(i));
        Log.w("MetadataUtil", strValueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(strValueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    private static zzpw zzb(int i, String str, zzst zzstVar) {
        int i2 = zzstVar.readInt();
        if (zzstVar.readInt() == zzoj.zzbdp && i2 >= 22) {
            zzstVar.zzac(10);
            int unsignedShort = zzstVar.readUnsignedShort();
            if (unsignedShort > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(unsignedShort);
                String string = sb.toString();
                int unsignedShort2 = zzstVar.readUnsignedShort();
                if (unsignedShort2 > 0) {
                    String strValueOf = String.valueOf(string);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 12);
                    sb2.append(strValueOf);
                    sb2.append("/");
                    sb2.append(unsignedShort2);
                    string = sb2.toString();
                }
                return new zzpw(str, null, string);
            }
        }
        String strValueOf2 = String.valueOf(zzoj.zzu(i));
        Log.w("MetadataUtil", strValueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(strValueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    private static int zze(zzst zzstVar) {
        zzstVar.zzac(4);
        if (zzstVar.readInt() == zzoj.zzbdp) {
            zzstVar.zzac(8);
            return zzstVar.readUnsignedByte();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
