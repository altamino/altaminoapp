package kotlinx.coroutines;

import com.narvii.util.statistics.constants.EventConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class j1 implements v1 {
    private final boolean isActive;

    @Override // kotlinx.coroutines.v1
    @Nullable
    public o2 a() {
        return null;
    }

    @Override // kotlinx.coroutines.v1
    public boolean isActive() {
        return this.isActive;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(isActive() ? "Active" : EventConstants.CommentPost.NEW);
        sb.append(kotlinx.serialization.json.internal.b.END_OBJ);
        return sb.toString();
    }

    public j1(boolean z6) {
        this.isActive = z6;
    }
}
