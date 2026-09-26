package androidx.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class Scene {
    private Context mContext;
    private Runnable mEnterAction;
    private Runnable mExitAction;
    private View mLayout;
    private int mLayoutId = -1;
    private ViewGroup mSceneRoot;

    public Scene(@NonNull ViewGroup viewGroup) {
        this.mSceneRoot = viewGroup;
    }

    public Scene(@NonNull ViewGroup viewGroup, @NonNull View view) {
        this.mSceneRoot = viewGroup;
        this.mLayout = view;
    }

    @Nullable
    public static Scene b(@NonNull ViewGroup viewGroup) {
        return (Scene) viewGroup.getTag(R.id.transition_current_scene);
    }

    static void c(@NonNull ViewGroup viewGroup, @Nullable Scene scene) {
        viewGroup.setTag(R.id.transition_current_scene, scene);
    }

    public void a() {
        Runnable runnable;
        if (b(this.mSceneRoot) != this || (runnable = this.mExitAction) == null) {
            return;
        }
        runnable.run();
    }
}
