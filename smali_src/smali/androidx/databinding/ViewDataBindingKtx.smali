.class public final Landroidx/databinding/ViewDataBindingKtx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;
    }
.end annotation


# static fields
.field private static final CREATE_STATE_FLOW_LISTENER:Landroidx/databinding/CreateWeakListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/databinding/ViewDataBindingKtx;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBindingKtx;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/databinding/ViewDataBindingKtx;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/databinding/ViewDataBindingKtx;->INSTANCE:Landroidx/databinding/ViewDataBindingKtx;

    .line 8
    .line 9
    new-instance v0, Landroidx/databinding/a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/databinding/a;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/databinding/ViewDataBindingKtx;->CREATE_STATE_FLOW_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/databinding/ViewDataBindingKtx;->b(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;->f()Landroidx/databinding/WeakListener;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
