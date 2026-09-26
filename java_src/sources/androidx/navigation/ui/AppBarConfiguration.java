package androidx.navigation.ui;

import android.view.Menu;
import androidx.customview.widget.Openable;
import androidx.navigation.NavGraph;
import java.util.HashSet;
import java.util.Set;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class AppBarConfiguration {

    @Nullable
    private final OnNavigateUpListener fallbackOnNavigateUpListener;

    @Nullable
    private final Openable openableLayout;

    @NotNull
    private final Set<Integer> topLevelDestinations;

    public interface OnNavigateUpListener {
    }

    public /* synthetic */ AppBarConfiguration(Set set, Openable openable, OnNavigateUpListener onNavigateUpListener, k kVar) {
        this(set, openable, onNavigateUpListener);
    }

    @Nullable
    public final Openable a() {
        return this.openableLayout;
    }

    @NotNull
    public final Set<Integer> b() {
        return this.topLevelDestinations;
    }

    private AppBarConfiguration(Set<Integer> set, Openable openable, OnNavigateUpListener onNavigateUpListener) {
        this.topLevelDestinations = set;
        this.openableLayout = openable;
        this.fallbackOnNavigateUpListener = onNavigateUpListener;
    }

    public static final class Builder {

        @Nullable
        private OnNavigateUpListener fallbackOnNavigateUpListener;

        @Nullable
        private Openable openableLayout;

        @NotNull
        private final Set<Integer> topLevelDestinations;

        public Builder(@NotNull NavGraph navGraph) {
            t.j(navGraph, "navGraph");
            HashSet hashSet = new HashSet();
            this.topLevelDestinations = hashSet;
            hashSet.add(Integer.valueOf(NavGraph.Companion.a(navGraph).p()));
        }

        public Builder(@NotNull Menu topLevelMenu) {
            t.j(topLevelMenu, "topLevelMenu");
            this.topLevelDestinations = new HashSet();
            int size = topLevelMenu.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.topLevelDestinations.add(Integer.valueOf(topLevelMenu.getItem(i10).getItemId()));
            }
        }

        public Builder(@NotNull int... topLevelDestinationIds) {
            t.j(topLevelDestinationIds, "topLevelDestinationIds");
            this.topLevelDestinations = new HashSet();
            for (int i10 : topLevelDestinationIds) {
                this.topLevelDestinations.add(Integer.valueOf(i10));
            }
        }

        public Builder(@NotNull Set<Integer> topLevelDestinationIds) {
            t.j(topLevelDestinationIds, "topLevelDestinationIds");
            HashSet hashSet = new HashSet();
            this.topLevelDestinations = hashSet;
            hashSet.addAll(topLevelDestinationIds);
        }
    }
}
