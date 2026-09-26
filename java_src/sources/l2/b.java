package l2;

import androidx.annotation.WorkerThread;

/* JADX INFO: loaded from: classes7.dex */
@WorkerThread
public interface b {

    public interface a<T> {
        T execute();
    }

    <T> T a(a<T> aVar);
}
