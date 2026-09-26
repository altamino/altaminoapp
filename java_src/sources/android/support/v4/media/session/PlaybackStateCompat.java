package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"BanParcelableUsage"})
public final class PlaybackStateCompat implements Parcelable {
    public static final long ACTION_FAST_FORWARD = 64;
    public static final long ACTION_PAUSE = 2;
    public static final long ACTION_PLAY = 4;
    public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024;
    public static final long ACTION_PLAY_FROM_SEARCH = 2048;
    public static final long ACTION_PLAY_FROM_URI = 8192;
    public static final long ACTION_PLAY_PAUSE = 512;
    public static final long ACTION_PREPARE = 16384;
    public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768;
    public static final long ACTION_PREPARE_FROM_SEARCH = 65536;
    public static final long ACTION_PREPARE_FROM_URI = 131072;
    public static final long ACTION_REWIND = 8;
    public static final long ACTION_SEEK_TO = 256;
    public static final long ACTION_SET_CAPTIONING_ENABLED = 1048576;
    public static final long ACTION_SET_PLAYBACK_SPEED = 4194304;
    public static final long ACTION_SET_RATING = 128;
    public static final long ACTION_SET_REPEAT_MODE = 262144;
    public static final long ACTION_SET_SHUFFLE_MODE = 2097152;

    @Deprecated
    public static final long ACTION_SET_SHUFFLE_MODE_ENABLED = 524288;
    public static final long ACTION_SKIP_TO_NEXT = 32;
    public static final long ACTION_SKIP_TO_PREVIOUS = 16;
    public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096;
    public static final long ACTION_STOP = 1;
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();
    public static final int ERROR_CODE_ACTION_ABORTED = 10;
    public static final int ERROR_CODE_APP_ERROR = 1;
    public static final int ERROR_CODE_AUTHENTICATION_EXPIRED = 3;
    public static final int ERROR_CODE_CONCURRENT_STREAM_LIMIT = 5;
    public static final int ERROR_CODE_CONTENT_ALREADY_PLAYING = 8;
    public static final int ERROR_CODE_END_OF_QUEUE = 11;
    public static final int ERROR_CODE_NOT_AVAILABLE_IN_REGION = 7;
    public static final int ERROR_CODE_NOT_SUPPORTED = 2;
    public static final int ERROR_CODE_PARENTAL_CONTROL_RESTRICTED = 6;
    public static final int ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED = 4;
    public static final int ERROR_CODE_SKIP_LIMIT_REACHED = 9;
    public static final int ERROR_CODE_UNKNOWN_ERROR = 0;
    private static final int KEYCODE_MEDIA_PAUSE = 127;
    private static final int KEYCODE_MEDIA_PLAY = 126;
    public static final long PLAYBACK_POSITION_UNKNOWN = -1;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_GROUP = 3;
    public static final int REPEAT_MODE_INVALID = -1;
    public static final int REPEAT_MODE_NONE = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int SHUFFLE_MODE_ALL = 1;
    public static final int SHUFFLE_MODE_GROUP = 2;
    public static final int SHUFFLE_MODE_INVALID = -1;
    public static final int SHUFFLE_MODE_NONE = 0;
    public static final int STATE_BUFFERING = 6;
    public static final int STATE_CONNECTING = 8;
    public static final int STATE_ERROR = 7;
    public static final int STATE_FAST_FORWARDING = 4;
    public static final int STATE_NONE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_REWINDING = 5;
    public static final int STATE_SKIPPING_TO_NEXT = 10;
    public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
    public static final int STATE_STOPPED = 1;
    final long mActions;
    final long mActiveItemId;
    final long mBufferedPosition;
    List<CustomAction> mCustomActions;
    final int mErrorCode;
    final CharSequence mErrorMessage;
    final Bundle mExtras;
    final long mPosition;
    final float mSpeed;
    final int mState;
    private PlaybackState mStateFwk;
    final long mUpdateTime;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();
        private final String mAction;
        private PlaybackState.CustomAction mCustomActionFwk;
        private final Bundle mExtras;
        private final int mIcon;
        private final CharSequence mName;

        class a implements Parcelable.Creator<CustomAction> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public CustomAction[] newArray(int i10) {
                return new CustomAction[i10];
            }

            a() {
            }
        }

        CustomAction(String str, CharSequence charSequence, int i10, Bundle bundle) {
            this.mAction = str;
            this.mName = charSequence;
            this.mIcon = i10;
            this.mExtras = bundle;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        CustomAction(Parcel parcel) {
            this.mAction = parcel.readString();
            this.mName = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.mIcon = parcel.readInt();
            this.mExtras = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        public static CustomAction a(Object obj) {
            if (obj == null) {
                return null;
            }
            PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
            Bundle bundleL = b.l(customAction);
            MediaSessionCompat.a(bundleL);
            CustomAction customAction2 = new CustomAction(b.f(customAction), b.o(customAction), b.m(customAction), bundleL);
            customAction2.mCustomActionFwk = customAction;
            return customAction2;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.mName) + ", mIcon=" + this.mIcon + ", mExtras=" + this.mExtras;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.mAction);
            TextUtils.writeToParcel(this.mName, parcel, i10);
            parcel.writeInt(this.mIcon);
            parcel.writeBundle(this.mExtras);
        }
    }

    class a implements Parcelable.Creator<PlaybackStateCompat> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat[] newArray(int i10) {
            return new PlaybackStateCompat[i10];
        }

        a() {
        }
    }

    @RequiresApi
    private static class b {
        @DoNotInline
        static PlaybackState.Builder d() {
            return new PlaybackState.Builder();
        }

        @DoNotInline
        static PlaybackState.CustomAction.Builder e(String str, CharSequence charSequence, int i10) {
            return new PlaybackState.CustomAction.Builder(str, charSequence, i10);
        }

        @DoNotInline
        static void a(PlaybackState.Builder builder, PlaybackState.CustomAction customAction) {
            builder.addCustomAction(customAction);
        }

        @DoNotInline
        static PlaybackState.CustomAction b(PlaybackState.CustomAction.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        static PlaybackState c(PlaybackState.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        static String f(PlaybackState.CustomAction customAction) {
            return customAction.getAction();
        }

        @DoNotInline
        static long g(PlaybackState playbackState) {
            return playbackState.getActions();
        }

        @DoNotInline
        static long h(PlaybackState playbackState) {
            return playbackState.getActiveQueueItemId();
        }

        @DoNotInline
        static long i(PlaybackState playbackState) {
            return playbackState.getBufferedPosition();
        }

        @DoNotInline
        static List<PlaybackState.CustomAction> j(PlaybackState playbackState) {
            return playbackState.getCustomActions();
        }

        @DoNotInline
        static CharSequence k(PlaybackState playbackState) {
            return playbackState.getErrorMessage();
        }

        @DoNotInline
        static Bundle l(PlaybackState.CustomAction customAction) {
            return customAction.getExtras();
        }

        @DoNotInline
        static int m(PlaybackState.CustomAction customAction) {
            return customAction.getIcon();
        }

        @DoNotInline
        static long n(PlaybackState playbackState) {
            return playbackState.getLastPositionUpdateTime();
        }

        @DoNotInline
        static CharSequence o(PlaybackState.CustomAction customAction) {
            return customAction.getName();
        }

        @DoNotInline
        static float p(PlaybackState playbackState) {
            return playbackState.getPlaybackSpeed();
        }

        @DoNotInline
        static long q(PlaybackState playbackState) {
            return playbackState.getPosition();
        }

        @DoNotInline
        static int r(PlaybackState playbackState) {
            return playbackState.getState();
        }

        @DoNotInline
        static void s(PlaybackState.Builder builder, long j6) {
            builder.setActions(j6);
        }

        @DoNotInline
        static void t(PlaybackState.Builder builder, long j6) {
            builder.setActiveQueueItemId(j6);
        }

        @DoNotInline
        static void u(PlaybackState.Builder builder, long j6) {
            builder.setBufferedPosition(j6);
        }

        @DoNotInline
        static void v(PlaybackState.Builder builder, CharSequence charSequence) {
            builder.setErrorMessage(charSequence);
        }

        @DoNotInline
        static void w(PlaybackState.CustomAction.Builder builder, Bundle bundle) {
            builder.setExtras(bundle);
        }

        @DoNotInline
        static void x(PlaybackState.Builder builder, int i10, long j6, float f, long j10) {
            builder.setState(i10, j6, f, j10);
        }
    }

    public static final class d {
        private long mActions;
        private long mActiveItemId;
        private long mBufferedPosition;
        private final List<CustomAction> mCustomActions;
        private int mErrorCode;
        private CharSequence mErrorMessage;
        private Bundle mExtras;
        private long mPosition;
        private float mRate;
        private int mState;
        private long mUpdateTime;

        public d() {
            this.mCustomActions = new ArrayList();
            this.mActiveItemId = -1L;
        }

        public d b(int i10, long j6, float f, long j10) {
            this.mState = i10;
            this.mPosition = j6;
            this.mUpdateTime = j10;
            this.mRate = f;
            return this;
        }

        public PlaybackStateCompat a() {
            return new PlaybackStateCompat(this.mState, this.mPosition, this.mBufferedPosition, this.mRate, this.mActions, this.mErrorCode, this.mErrorMessage, this.mUpdateTime, this.mCustomActions, this.mActiveItemId, this.mExtras);
        }

        public d(PlaybackStateCompat playbackStateCompat) {
            ArrayList arrayList = new ArrayList();
            this.mCustomActions = arrayList;
            this.mActiveItemId = -1L;
            this.mState = playbackStateCompat.mState;
            this.mPosition = playbackStateCompat.mPosition;
            this.mRate = playbackStateCompat.mSpeed;
            this.mUpdateTime = playbackStateCompat.mUpdateTime;
            this.mBufferedPosition = playbackStateCompat.mBufferedPosition;
            this.mActions = playbackStateCompat.mActions;
            this.mErrorCode = playbackStateCompat.mErrorCode;
            this.mErrorMessage = playbackStateCompat.mErrorMessage;
            List<CustomAction> list = playbackStateCompat.mCustomActions;
            if (list != null) {
                arrayList.addAll(list);
            }
            this.mActiveItemId = playbackStateCompat.mActiveItemId;
            this.mExtras = playbackStateCompat.mExtras;
        }
    }

    PlaybackStateCompat(int i10, long j6, long j10, float f, long j11, int i11, CharSequence charSequence, long j12, List<CustomAction> list, long j13, Bundle bundle) {
        this.mState = i10;
        this.mPosition = j6;
        this.mBufferedPosition = j10;
        this.mSpeed = f;
        this.mActions = j11;
        this.mErrorCode = i11;
        this.mErrorMessage = charSequence;
        this.mUpdateTime = j12;
        this.mCustomActions = new ArrayList(list);
        this.mActiveItemId = j13;
        this.mExtras = bundle;
    }

    public static PlaybackStateCompat a(Object obj) {
        ArrayList arrayList = null;
        if (obj == null) {
            return null;
        }
        PlaybackState playbackState = (PlaybackState) obj;
        List<PlaybackState.CustomAction> listJ = b.j(playbackState);
        if (listJ != null) {
            arrayList = new ArrayList(listJ.size());
            Iterator<PlaybackState.CustomAction> it = listJ.iterator();
            while (it.hasNext()) {
                arrayList.add(CustomAction.a(it.next()));
            }
        }
        Bundle bundleA = c.a(playbackState);
        MediaSessionCompat.a(bundleA);
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(b.r(playbackState), b.q(playbackState), b.i(playbackState), b.p(playbackState), b.g(playbackState), 0, b.k(playbackState), b.n(playbackState), arrayList, b.h(playbackState), bundleA);
        playbackStateCompat.mStateFwk = playbackState;
        return playbackStateCompat;
    }

    public long c() {
        return this.mActions;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long e() {
        return this.mUpdateTime;
    }

    public float g() {
        return this.mSpeed;
    }

    public long h() {
        return this.mPosition;
    }

    public int i() {
        return this.mState;
    }

    @RequiresApi
    private static class c {
        @DoNotInline
        static Bundle a(PlaybackState playbackState) {
            return playbackState.getExtras();
        }

        @DoNotInline
        static void b(PlaybackState.Builder builder, Bundle bundle) {
            builder.setExtras(bundle);
        }
    }

    public String toString() {
        return "PlaybackState {state=" + this.mState + ", position=" + this.mPosition + ", buffered position=" + this.mBufferedPosition + ", speed=" + this.mSpeed + ", updated=" + this.mUpdateTime + ", actions=" + this.mActions + ", error code=" + this.mErrorCode + ", error message=" + this.mErrorMessage + ", custom actions=" + this.mCustomActions + ", active item id=" + this.mActiveItemId + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.mState);
        parcel.writeLong(this.mPosition);
        parcel.writeFloat(this.mSpeed);
        parcel.writeLong(this.mUpdateTime);
        parcel.writeLong(this.mBufferedPosition);
        parcel.writeLong(this.mActions);
        TextUtils.writeToParcel(this.mErrorMessage, parcel, i10);
        parcel.writeTypedList(this.mCustomActions);
        parcel.writeLong(this.mActiveItemId);
        parcel.writeBundle(this.mExtras);
        parcel.writeInt(this.mErrorCode);
    }

    PlaybackStateCompat(Parcel parcel) {
        this.mState = parcel.readInt();
        this.mPosition = parcel.readLong();
        this.mSpeed = parcel.readFloat();
        this.mUpdateTime = parcel.readLong();
        this.mBufferedPosition = parcel.readLong();
        this.mActions = parcel.readLong();
        this.mErrorMessage = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mCustomActions = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.mActiveItemId = parcel.readLong();
        this.mExtras = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.mErrorCode = parcel.readInt();
    }
}
