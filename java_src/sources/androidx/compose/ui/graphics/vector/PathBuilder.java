package androidx.compose.ui.graphics.vector;

import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class PathBuilder {

    @NotNull
    private final List<PathNode> nodes = new ArrayList();

    @NotNull
    public final List<PathNode> c() {
        return this.nodes;
    }

    private final PathBuilder a(PathNode pathNode) {
        this.nodes.add(pathNode);
        return this;
    }

    @NotNull
    public final PathBuilder b() {
        return a(PathNode.Close.INSTANCE);
    }

    @NotNull
    public final PathBuilder d(float f, float f6) {
        return a(new PathNode.RelativeLineTo(f, f6));
    }

    @NotNull
    public final PathBuilder e(float f, float f6) {
        return a(new PathNode.MoveTo(f, f6));
    }
}
