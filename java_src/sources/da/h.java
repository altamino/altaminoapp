package da;

import java.util.function.Function;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class h implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((Element) obj).text();
    }
}
