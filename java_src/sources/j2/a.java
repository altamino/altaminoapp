package j2;

import java.lang.Throwable;

/* JADX INFO: loaded from: classes9.dex */
public interface a<TInput, TResult, TException extends Throwable> {
    TResult apply(TInput tinput) throws Throwable;
}
