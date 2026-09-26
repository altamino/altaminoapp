package pl.droidsonroids.gif;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
class f extends Handler {
    static final int MSG_TYPE_INVALIDATION = -1;
    private final WeakReference<b> mDrawableRef;

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        b bVar = this.mDrawableRef.get();
        if (bVar == null) {
            return;
        }
        if (message.what == -1) {
            bVar.invalidateSelf();
            return;
        }
        Iterator<a> it = bVar.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationCompleted(message.what);
        }
    }

    public f(b bVar) {
        super(Looper.getMainLooper());
        this.mDrawableRef = new WeakReference<>(bVar);
    }
}
