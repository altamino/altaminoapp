package e0;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import coil.request.m;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class e implements d<Integer, Uri> {
    private final boolean b(@DrawableRes int i10, Context context) {
        try {
            return context.getResources().getResourceEntryName(i10) != null;
        } catch (Resources.NotFoundException unused) {
            return false;
        }
    }

    @Override // e0.d
    public /* bridge */ /* synthetic */ Uri a(Integer num, m mVar) {
        return c(num.intValue(), mVar);
    }

    @Nullable
    public Uri c(@DrawableRes int i10, @NotNull m mVar) {
        if (!b(i10, mVar.g())) {
            return null;
        }
        Uri uri = Uri.parse("android.resource://" + mVar.g().getPackageName() + '/' + i10);
        t.i(uri, "parse(this)");
        return uri;
    }
}
