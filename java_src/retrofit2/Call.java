package retrofit2;

import java.io.IOException;

/* loaded from: classes4.dex */
public interface Call<T> extends Cloneable {
    /* renamed from: clone */
    Call<T> mo68clone();

    void enqueue(Callback<T> callback);

    Response<T> execute() throws IOException;

    boolean isCanceled();
}
