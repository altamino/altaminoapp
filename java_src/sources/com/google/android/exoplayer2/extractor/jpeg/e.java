package com.google.android.exoplayer2.extractor.jpeg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.v2;
import com.google.common.collect.a0;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes8.dex */
final class e {
    private static final String TAG = "MotionPhotoXmpParser";
    private static final String[] MOTION_PHOTO_ATTRIBUTE_NAMES = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    private static a0<b.a> c(XmlPullParser xmlPullParser) {
        for (String str : DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES) {
            String strA = p0.a(xmlPullParser, str);
            if (strA != null) {
                return a0.z(new b.a("image/jpeg", "Primary", 0L, 0L), new b.a("video/mp4", "MotionPhoto", Long.parseLong(strA), 0L));
            }
        }
        return a0.x();
    }

    private static boolean d(XmlPullParser xmlPullParser) {
        for (String str : MOTION_PHOTO_ATTRIBUTE_NAMES) {
            String strA = p0.a(xmlPullParser, str);
            if (strA != null) {
                return Integer.parseInt(strA) == 1;
            }
        }
        return false;
    }

    private static long e(XmlPullParser xmlPullParser) {
        for (String str : DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES) {
            String strA = p0.a(xmlPullParser, str);
            if (strA != null) {
                long j6 = Long.parseLong(strA);
                if (j6 == -1) {
                    return -9223372036854775807L;
                }
                return j6;
            }
        }
        return -9223372036854775807L;
    }

    @Nullable
    public static b a(String str) throws IOException {
        try {
            return b(str);
        } catch (v2 | NumberFormatException | XmlPullParserException unused) {
            t.i(TAG, "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    @Nullable
    private static b b(String str) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.next();
        if (p0.e(xmlPullParserNewPullParser, "x:xmpmeta")) {
            a0<b.a> a0VarX = a0.x();
            long jE = -9223372036854775807L;
            do {
                xmlPullParserNewPullParser.next();
                if (p0.e(xmlPullParserNewPullParser, "rdf:Description")) {
                    if (!d(xmlPullParserNewPullParser)) {
                        return null;
                    }
                    jE = e(xmlPullParserNewPullParser);
                    a0VarX = c(xmlPullParserNewPullParser);
                } else if (p0.e(xmlPullParserNewPullParser, "Container:Directory")) {
                    a0VarX = f(xmlPullParserNewPullParser, "Container", "Item");
                } else if (p0.e(xmlPullParserNewPullParser, "GContainer:Directory")) {
                    a0VarX = f(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
                }
            } while (!p0.c(xmlPullParserNewPullParser, "x:xmpmeta"));
            if (a0VarX.isEmpty()) {
                return null;
            }
            return new b(jE, a0VarX);
        }
        throw v2.a("Couldn't find xmp metadata", null);
    }

    private static a0<b.a> f(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        long j6;
        long j10;
        a0.a aVarR = a0.r();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (p0.e(xmlPullParser, str3)) {
                String strA = p0.a(xmlPullParser, str2 + ":Mime");
                String strA2 = p0.a(xmlPullParser, str2 + ":Semantic");
                String strA3 = p0.a(xmlPullParser, str2 + ":Length");
                String strA4 = p0.a(xmlPullParser, str2 + ":Padding");
                if (strA != null && strA2 != null) {
                    if (strA3 != null) {
                        j6 = Long.parseLong(strA3);
                    } else {
                        j6 = 0;
                    }
                    if (strA4 != null) {
                        j10 = Long.parseLong(strA4);
                    } else {
                        j10 = 0;
                    }
                    aVarR.d(new b.a(strA, strA2, j6, j10));
                } else {
                    return a0.x();
                }
            }
        } while (!p0.c(xmlPullParser, str4));
        return aVarR.k();
    }
}
