package androidx.core.app;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.graphics.drawable.Icon;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import androidx.versionedparcelable.VersionedParcelable;

/* JADX INFO: loaded from: classes8.dex */
public final class RemoteActionCompat implements VersionedParcelable {

    @NonNull
    @RestrictTo
    public PendingIntent mActionIntent;

    @NonNull
    @RestrictTo
    public CharSequence mContentDescription;

    @RestrictTo
    public boolean mEnabled;

    @NonNull
    @RestrictTo
    public IconCompat mIcon;

    @RestrictTo
    public boolean mShouldShowIcon;

    @NonNull
    @RestrictTo
    public CharSequence mTitle;

    @RequiresApi
    static class Api26Impl {
        @DoNotInline
        static RemoteAction a(Icon icon, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
            return new RemoteAction(icon, charSequence, charSequence2, pendingIntent);
        }

        private Api26Impl() {
        }

        @DoNotInline
        static PendingIntent b(RemoteAction remoteAction) {
            return remoteAction.getActionIntent();
        }

        @DoNotInline
        static CharSequence c(RemoteAction remoteAction) {
            return remoteAction.getContentDescription();
        }

        @DoNotInline
        static Icon d(RemoteAction remoteAction) {
            return remoteAction.getIcon();
        }

        @DoNotInline
        static CharSequence e(RemoteAction remoteAction) {
            return remoteAction.getTitle();
        }

        @DoNotInline
        static boolean f(RemoteAction remoteAction) {
            return remoteAction.isEnabled();
        }

        @DoNotInline
        static void g(RemoteAction remoteAction, boolean z6) {
            remoteAction.setEnabled(z6);
        }
    }

    public RemoteActionCompat(@NonNull IconCompat iconCompat, @NonNull CharSequence charSequence, @NonNull CharSequence charSequence2, @NonNull PendingIntent pendingIntent) {
        this.mIcon = (IconCompat) Preconditions.i(iconCompat);
        this.mTitle = (CharSequence) Preconditions.i(charSequence);
        this.mContentDescription = (CharSequence) Preconditions.i(charSequence2);
        this.mActionIntent = (PendingIntent) Preconditions.i(pendingIntent);
        this.mEnabled = true;
        this.mShouldShowIcon = true;
    }

    @RequiresApi
    static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static void a(RemoteAction remoteAction, boolean z6) {
            remoteAction.setShouldShowIcon(z6);
        }

        @DoNotInline
        static boolean b(RemoteAction remoteAction) {
            return remoteAction.shouldShowIcon();
        }
    }

    @RestrictTo
    public RemoteActionCompat() {
    }

    public RemoteActionCompat(@NonNull RemoteActionCompat remoteActionCompat) {
        Preconditions.i(remoteActionCompat);
        this.mIcon = remoteActionCompat.mIcon;
        this.mTitle = remoteActionCompat.mTitle;
        this.mContentDescription = remoteActionCompat.mContentDescription;
        this.mActionIntent = remoteActionCompat.mActionIntent;
        this.mEnabled = remoteActionCompat.mEnabled;
        this.mShouldShowIcon = remoteActionCompat.mShouldShowIcon;
    }
}
