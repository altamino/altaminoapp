package coil.size;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public interface l<T extends View> extends j {
    boolean a();

    @NotNull
    T getView();

    public static final class a {

        /* JADX INFO: renamed from: coil.size.l$a$a, reason: collision with other inner class name */
        static final class C0105a extends v implements e8.l<Throwable, l0> {
            final /* synthetic */ b $preDrawListener;
            final /* synthetic */ ViewTreeObserver $viewTreeObserver;
            final /* synthetic */ l<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0105a(l<T> lVar, ViewTreeObserver viewTreeObserver, b bVar) {
                super(1);
                this.this$0 = lVar;
                this.$viewTreeObserver = viewTreeObserver;
                this.$preDrawListener = bVar;
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
                invoke2(th);
                return l0.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                a.g(this.this$0, this.$viewTreeObserver, this.$preDrawListener);
            }
        }

        public static final class b implements ViewTreeObserver.OnPreDrawListener {
            final /* synthetic */ o<i> $continuation;
            final /* synthetic */ ViewTreeObserver $viewTreeObserver;
            private boolean isResumed;
            final /* synthetic */ l<T> this$0;

            /* JADX WARN: Multi-variable type inference failed */
            b(l<T> lVar, ViewTreeObserver viewTreeObserver, o<? super i> oVar) {
                this.this$0 = lVar;
                this.$viewTreeObserver = viewTreeObserver;
                this.$continuation = oVar;
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                i iVarE = a.e(this.this$0);
                if (iVarE != null) {
                    a.g(this.this$0, this.$viewTreeObserver, this);
                    if (!this.isResumed) {
                        this.isResumed = true;
                        this.$continuation.resumeWith(w7.v.b(iVarE));
                    }
                }
                return true;
            }
        }

        private static <T extends View> c c(l<T> lVar, int i10, int i11, int i12) {
            if (i10 == -2) {
                return c.b.INSTANCE;
            }
            int i13 = i10 - i12;
            if (i13 > 0) {
                return coil.size.a.a(i13);
            }
            int i14 = i11 - i12;
            if (i14 > 0) {
                return coil.size.a.a(i14);
            }
            return null;
        }

        private static <T extends View> c d(l<T> lVar) {
            int i10;
            int paddingTop;
            ViewGroup.LayoutParams layoutParams = lVar.getView().getLayoutParams();
            if (layoutParams != null) {
                i10 = layoutParams.height;
            } else {
                i10 = -1;
            }
            int height = lVar.getView().getHeight();
            if (lVar.a()) {
                paddingTop = lVar.getView().getPaddingTop() + lVar.getView().getPaddingBottom();
            } else {
                paddingTop = 0;
            }
            return c(lVar, i10, height, paddingTop);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends View> i e(l<T> lVar) {
            c cVarD;
            c cVarF = f(lVar);
            if (cVarF == null || (cVarD = d(lVar)) == null) {
                return null;
            }
            return new i(cVarF, cVarD);
        }

        private static <T extends View> c f(l<T> lVar) {
            int i10;
            int paddingLeft;
            ViewGroup.LayoutParams layoutParams = lVar.getView().getLayoutParams();
            if (layoutParams != null) {
                i10 = layoutParams.width;
            } else {
                i10 = -1;
            }
            int width = lVar.getView().getWidth();
            if (lVar.a()) {
                paddingLeft = lVar.getView().getPaddingLeft() + lVar.getView().getPaddingRight();
            } else {
                paddingLeft = 0;
            }
            return c(lVar, i10, width, paddingLeft);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends View> void g(l<T> lVar, ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            } else {
                lVar.getView().getViewTreeObserver().removeOnPreDrawListener(onPreDrawListener);
            }
        }

        @Nullable
        public static <T extends View> Object h(@NotNull l<T> lVar, @NotNull kotlin.coroutines.d<? super i> dVar) throws Throwable {
            i iVarE = e(lVar);
            if (iVarE != null) {
                return iVarE;
            }
            p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            ViewTreeObserver viewTreeObserver = lVar.getView().getViewTreeObserver();
            b bVar = new b(lVar, viewTreeObserver, pVar);
            viewTreeObserver.addOnPreDrawListener(bVar);
            pVar.S(new C0105a(lVar, viewTreeObserver, bVar));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU;
        }
    }
}
