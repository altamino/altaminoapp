package androidx.activity.result;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"BanParcelableUsage"})
public final class IntentSenderRequest implements Parcelable {

    @Nullable
    private final Intent fillInIntent;
    private final int flagsMask;
    private final int flagsValues;

    @NotNull
    private final IntentSender intentSender;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new Parcelable.Creator<IntentSenderRequest>() { // from class: androidx.activity.result.IntentSenderRequest$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public IntentSenderRequest createFromParcel(@NotNull Parcel inParcel) {
            t.j(inParcel, "inParcel");
            return new IntentSenderRequest(inParcel);
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public IntentSenderRequest[] newArray(int i10) {
            return new IntentSenderRequest[i10];
        }
    };

    public static final class Builder {

        @Nullable
        private Intent fillInIntent;
        private int flagsMask;
        private int flagsValues;

        @NotNull
        private final IntentSender intentSender;

        @Retention(RetentionPolicy.SOURCE)
        private @interface Flag {
        }

        public Builder(@NotNull IntentSender intentSender) {
            t.j(intentSender, "intentSender");
            this.intentSender = intentSender;
        }

        @NotNull
        public final Builder b(@Nullable Intent intent) {
            this.fillInIntent = intent;
            return this;
        }

        @NotNull
        public final Builder c(int i10, int i11) {
            this.flagsValues = i10;
            this.flagsMask = i11;
            return this;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Builder(@NotNull PendingIntent pendingIntent) {
            t.j(pendingIntent, "pendingIntent");
            IntentSender intentSender = pendingIntent.getIntentSender();
            t.i(intentSender, "pendingIntent.intentSender");
            this(intentSender);
        }

        @NotNull
        public final IntentSenderRequest a() {
            return new IntentSenderRequest(this.intentSender, this.fillInIntent, this.flagsMask, this.flagsValues);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public IntentSenderRequest(@NotNull IntentSender intentSender, @Nullable Intent intent, int i10, int i11) {
        t.j(intentSender, "intentSender");
        this.intentSender = intentSender;
        this.fillInIntent = intent;
        this.flagsMask = i10;
        this.flagsValues = i11;
    }

    @Nullable
    public final Intent c() {
        return this.fillInIntent;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int e() {
        return this.flagsMask;
    }

    public final int g() {
        return this.flagsValues;
    }

    @NotNull
    public final IntentSender h() {
        return this.intentSender;
    }

    public /* synthetic */ IntentSenderRequest(IntentSender intentSender, Intent intent, int i10, int i11, int i12, k kVar) {
        this(intentSender, (i12 & 2) != 0 ? null : intent, (i12 & 4) != 0 ? 0 : i10, (i12 & 8) != 0 ? 0 : i11);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        t.j(dest, "dest");
        dest.writeParcelable(this.intentSender, i10);
        dest.writeParcelable(this.fillInIntent, i10);
        dest.writeInt(this.flagsMask);
        dest.writeInt(this.flagsValues);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public IntentSenderRequest(@NotNull Parcel parcel) {
        t.j(parcel, "parcel");
        Parcelable parcelable = parcel.readParcelable(IntentSender.class.getClassLoader());
        t.g(parcelable);
        this((IntentSender) parcelable, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
    }
}
