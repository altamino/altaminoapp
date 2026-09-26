package androidx.media3.extractor.jpeg;

import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.XmlPullParserUtil;
import com.google.common.collect.a0;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes4.dex */
final class XmpMotionPhotoDescriptionParser {
    private static final String TAG = "MotionPhotoXmpParser";
    private static final String[] MOTION_PHOTO_ATTRIBUTE_NAMES = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    private static a0<MotionPhotoDescription.ContainerItem> c(XmlPullParser xmlPullParser) {
        for (String str : DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES) {
            String strA = XmlPullParserUtil.a(xmlPullParser, str);
            if (strA != null) {
                return a0.z(new MotionPhotoDescription.ContainerItem("image/jpeg", "Primary", 0L, 0L), new MotionPhotoDescription.ContainerItem("video/mp4", "MotionPhoto", Long.parseLong(strA), 0L));
            }
        }
        return a0.x();
    }

    private static boolean d(XmlPullParser xmlPullParser) {
        for (String str : MOTION_PHOTO_ATTRIBUTE_NAMES) {
            String strA = XmlPullParserUtil.a(xmlPullParser, str);
            if (strA != null) {
                return Integer.parseInt(strA) == 1;
            }
        }
        return false;
    }

    private static long e(XmlPullParser xmlPullParser) {
        for (String str : DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES) {
            String strA = XmlPullParserUtil.a(xmlPullParser, str);
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

    private XmpMotionPhotoDescriptionParser() {
    }

    @Nullable
    public static MotionPhotoDescription a(String str) throws IOException {
        try {
            return b(str);
        } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
            Log.i(TAG, "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    @Nullable
    private static MotionPhotoDescription b(String str) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.next();
        if (XmlPullParserUtil.f(xmlPullParserNewPullParser, "x:xmpmeta")) {
            a0<MotionPhotoDescription.ContainerItem> a0VarX = a0.x();
            long jE = -9223372036854775807L;
            do {
                xmlPullParserNewPullParser.next();
                if (XmlPullParserUtil.f(xmlPullParserNewPullParser, "rdf:Description")) {
                    if (!d(xmlPullParserNewPullParser)) {
                        return null;
                    }
                    jE = e(xmlPullParserNewPullParser);
                    a0VarX = c(xmlPullParserNewPullParser);
                } else if (XmlPullParserUtil.f(xmlPullParserNewPullParser, "Container:Directory")) {
                    a0VarX = f(xmlPullParserNewPullParser, "Container", "Item");
                } else if (XmlPullParserUtil.f(xmlPullParserNewPullParser, "GContainer:Directory")) {
                    a0VarX = f(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
                }
            } while (!XmlPullParserUtil.d(xmlPullParserNewPullParser, "x:xmpmeta"));
            if (a0VarX.isEmpty()) {
                return null;
            }
            return new MotionPhotoDescription(jE, a0VarX);
        }
        throw ParserException.a("Couldn't find xmp metadata", null);
    }

    private static a0<MotionPhotoDescription.ContainerItem> f(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        long j6;
        long j10;
        a0.a aVarR = a0.r();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.f(xmlPullParser, str3)) {
                String strA = XmlPullParserUtil.a(xmlPullParser, str2 + ":Mime");
                String strA2 = XmlPullParserUtil.a(xmlPullParser, str2 + ":Semantic");
                String strA3 = XmlPullParserUtil.a(xmlPullParser, str2 + ":Length");
                String strA4 = XmlPullParserUtil.a(xmlPullParser, str2 + ":Padding");
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
                    aVarR.d(new MotionPhotoDescription.ContainerItem(strA, strA2, j6, j10));
                } else {
                    return a0.x();
                }
            }
        } while (!XmlPullParserUtil.d(xmlPullParser, str4));
        return aVarR.k();
    }
}
