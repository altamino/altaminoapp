package androidx.media3.extractor.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.base.c;
import com.google.common.collect.a0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new Parcelable.Creator<TextInformationFrame>() { // from class: androidx.media3.extractor.metadata.id3.TextInformationFrame.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public TextInformationFrame[] newArray(int i10) {
            return new TextInformationFrame[i10];
        }
    };

    @Nullable
    public final String description;

    @Deprecated
    public final String value;
    public final a0<String> values;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        return Util.c(this.id, textInformationFrame.id) && Util.c(this.description, textInformationFrame.description) && this.values.equals(textInformationFrame.values);
    }

    public TextInformationFrame(String str, @Nullable String str2, List<String> list) {
        super(str);
        Assertions.a(!list.isEmpty());
        this.description = str2;
        a0<String> a0VarT = a0.t(list);
        this.values = a0VarT;
        this.value = a0VarT.get(0);
    }

    private static List<Integer> a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    public int hashCode() {
        int iHashCode = (527 + this.id.hashCode()) * 31;
        String str = this.description;
        return ((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.values.hashCode();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.media3.extractor.metadata.id3.Id3Frame, androidx.media3.common.Metadata.Entry
    public void k0(MediaMetadata.Builder builder) {
        String str = this.id;
        str.hashCode();
        byte b7 = -1;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    b7 = 0;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    b7 = 1;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    b7 = 2;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    b7 = 3;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    b7 = 4;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    b7 = 5;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    b7 = 6;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    b7 = 7;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    b7 = 8;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    b7 = 9;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    b7 = 10;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    b7 = c.VT;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    b7 = c.FF;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    b7 = c.CR;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    b7 = c.SO;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    b7 = c.SI;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    b7 = c.DLE;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    b7 = 17;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    b7 = c.DC2;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    b7 = 19;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    b7 = c.DC4;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    b7 = c.NAK;
                }
                break;
        }
        try {
            switch (b7) {
                case 0:
                case 10:
                    builder.N(this.values.get(0));
                    break;
                case 1:
                case 11:
                    builder.S(this.values.get(0));
                    break;
                case 2:
                case 12:
                    String str2 = this.values.get(0);
                    builder.f0(Integer.valueOf(Integer.parseInt(str2.substring(2, 4)))).e0(Integer.valueOf(Integer.parseInt(str2.substring(0, 2))));
                    break;
                case 3:
                case 17:
                    builder.O(this.values.get(0));
                    break;
                case 4:
                case 18:
                    builder.M(this.values.get(0));
                    break;
                case 5:
                case 19:
                    builder.T(this.values.get(0));
                    break;
                case 6:
                case 20:
                    String[] strArrD1 = Util.d1(this.values.get(0), com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                    builder.p0(Integer.valueOf(Integer.parseInt(strArrD1[0]))).o0(strArrD1.length > 1 ? Integer.valueOf(Integer.parseInt(strArrD1[1])) : null);
                    break;
                case 7:
                case 16:
                    builder.m0(this.values.get(0));
                    break;
                case 8:
                case 15:
                    builder.r0(this.values.get(0));
                    break;
                case 9:
                case 21:
                    builder.g0(Integer.valueOf(Integer.parseInt(this.values.get(0))));
                    break;
                case 13:
                    List<Integer> listA = a(this.values.get(0));
                    int size = listA.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                builder.e0(listA.get(2));
                            }
                        }
                        builder.f0(listA.get(1));
                    }
                    builder.g0(listA.get(0));
                    break;
                case 14:
                    List<Integer> listA2 = a(this.values.get(0));
                    int size2 = listA2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                builder.h0(listA2.get(2));
                            }
                        }
                        builder.i0(listA2.get(1));
                    }
                    builder.j0(listA2.get(0));
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public String toString() {
        return this.id + ": description=" + this.description + ": values=" + this.values;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.id);
        parcel.writeString(this.description);
        parcel.writeStringArray((String[]) this.values.toArray(new String[0]));
    }

    @Deprecated
    public TextInformationFrame(String str, @Nullable String str2, String str3) {
        this(str, str2, a0.y(str3));
    }

    private TextInformationFrame(Parcel parcel) {
        this((String) Assertions.e(parcel.readString()), parcel.readString(), a0.u((String[]) Assertions.e(parcel.createStringArray())));
    }
}
