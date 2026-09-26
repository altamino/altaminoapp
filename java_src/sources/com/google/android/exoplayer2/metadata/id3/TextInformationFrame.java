package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.util.o0;
import com.google.common.base.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new a();

    @Nullable
    public final String description;
    public final String value;

    class a implements Parcelable.Creator<TextInformationFrame> {
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

        a() {
        }
    }

    public TextInformationFrame(String str, @Nullable String str2, String str3) {
        super(str);
        this.description = str2;
        this.value = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        return o0.c(this.id, textInformationFrame.id) && o0.c(this.description, textInformationFrame.description) && o0.c(this.value, textInformationFrame.value);
    }

    TextInformationFrame(Parcel parcel) {
        super((String) o0.j(parcel.readString()));
        this.description = parcel.readString();
        this.value = (String) o0.j(parcel.readString());
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

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, com.google.android.exoplayer2.metadata.Metadata.Entry
    public void b(n2.b bVar) {
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
                    bVar.L(this.value);
                    break;
                case 1:
                case 11:
                    bVar.Q(this.value);
                    break;
                case 2:
                case 12:
                    bVar.b0(Integer.valueOf(Integer.parseInt(this.value.substring(2, 4)))).a0(Integer.valueOf(Integer.parseInt(this.value.substring(0, 2))));
                    break;
                case 3:
                case 17:
                    bVar.M(this.value);
                    break;
                case 4:
                case 18:
                    bVar.K(this.value);
                    break;
                case 5:
                case 19:
                    bVar.R(this.value);
                    break;
                case 6:
                case 20:
                    String[] strArrH0 = o0.H0(this.value, com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                    bVar.l0(Integer.valueOf(Integer.parseInt(strArrH0[0]))).k0(strArrH0.length > 1 ? Integer.valueOf(Integer.parseInt(strArrH0[1])) : null);
                    break;
                case 7:
                case 16:
                    bVar.i0(this.value);
                    break;
                case 8:
                case 15:
                    bVar.n0(this.value);
                    break;
                case 9:
                case 21:
                    bVar.c0(Integer.valueOf(Integer.parseInt(this.value)));
                    break;
                case 13:
                    List<Integer> listA = a(this.value);
                    int size = listA.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                bVar.a0(listA.get(2));
                            }
                        }
                        bVar.b0(listA.get(1));
                    }
                    bVar.c0(listA.get(0));
                    break;
                case 14:
                    List<Integer> listA2 = a(this.value);
                    int size2 = listA2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                bVar.d0(listA2.get(2));
                            }
                        }
                        bVar.e0(listA2.get(1));
                    }
                    bVar.f0(listA2.get(0));
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    public int hashCode() {
        int iHashCode = (527 + this.id.hashCode()) * 31;
        String str = this.description;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.value;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.id + ": description=" + this.description + ": value=" + this.value;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.id);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }
}
