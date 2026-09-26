package kotlinx.serialization.internal;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class n1<T> {

    @NotNull
    private final ConcurrentHashMap<List<KType>, w7.v<KSerializer<T>>> serializers = new ConcurrentHashMap<>();
}
