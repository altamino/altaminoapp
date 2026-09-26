package com.airbnb.lottie.animation.content;

import android.annotation.TargetApi;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(19)
public class j implements k, i {
    private final com.airbnb.lottie.model.content.h mergePaths;
    private final String name;
    private final Path firstPath = new Path();
    private final Path remainderPath = new Path();
    private final Path path = new Path();
    private final List<k> pathContents = new ArrayList();

    private void e() {
        for (int i10 = 0; i10 < this.pathContents.size(); i10++) {
            this.path.addPath(this.pathContents.get(i10).getPath());
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public void f(List<b> list, List<b> list2) {
        for (int i10 = 0; i10 < this.pathContents.size(); i10++) {
            this.pathContents.get(i10).f(list, list2);
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public String getName() {
        return this.name;
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode;

        static {
            int[] iArr = new int[com.airbnb.lottie.model.content.h.c.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode = iArr;
            try {
                iArr[com.airbnb.lottie.model.content.h.c.Merge.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[com.airbnb.lottie.model.content.h.c.Add.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[com.airbnb.lottie.model.content.h.c.Subtract.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[com.airbnb.lottie.model.content.h.c.Intersect.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[com.airbnb.lottie.model.content.h.c.ExcludeIntersections.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @TargetApi(19)
    private void g(Path.Op op) {
        this.remainderPath.reset();
        this.firstPath.reset();
        for (int size = this.pathContents.size() - 1; size >= 1; size--) {
            k kVar = this.pathContents.get(size);
            if (kVar instanceof c) {
                c cVar = (c) kVar;
                List<k> listH = cVar.h();
                for (int size2 = listH.size() - 1; size2 >= 0; size2--) {
                    Path path = listH.get(size2).getPath();
                    path.transform(cVar.i());
                    this.remainderPath.addPath(path);
                }
            } else {
                this.remainderPath.addPath(kVar.getPath());
            }
        }
        k kVar2 = this.pathContents.get(0);
        if (kVar2 instanceof c) {
            c cVar2 = (c) kVar2;
            List<k> listH2 = cVar2.h();
            for (int i10 = 0; i10 < listH2.size(); i10++) {
                Path path2 = listH2.get(i10).getPath();
                path2.transform(cVar2.i());
                this.firstPath.addPath(path2);
            }
        } else {
            this.firstPath.set(kVar2.getPath());
        }
        this.path.op(this.firstPath, this.remainderPath, op);
    }

    @Override // com.airbnb.lottie.animation.content.k
    public Path getPath() {
        this.path.reset();
        int i10 = a.$SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[this.mergePaths.b().ordinal()];
        if (i10 == 1) {
            e();
        } else if (i10 == 2) {
            g(Path.Op.UNION);
        } else if (i10 == 3) {
            g(Path.Op.REVERSE_DIFFERENCE);
        } else if (i10 == 4) {
            g(Path.Op.INTERSECT);
        } else if (i10 == 5) {
            g(Path.Op.XOR);
        }
        return this.path;
    }

    public j(com.airbnb.lottie.model.content.h hVar) {
        this.name = hVar.c();
        this.mergePaths = hVar;
    }

    @Override // com.airbnb.lottie.animation.content.i
    public void c(ListIterator<b> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            b bVarPrevious = listIterator.previous();
            if (bVarPrevious instanceof k) {
                this.pathContents.add((k) bVarPrevious);
                listIterator.remove();
            }
        }
    }
}
