.class final Lcom/narvii/permisson/RationaleDialogConfigExt$emptyAction$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/permisson/RationaleDialogConfigExt;->emptyAction()Le8/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroid/view/View;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/permisson/RationaleDialogConfigExt$emptyAction$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/permisson/RationaleDialogConfigExt$emptyAction$1;

    invoke-direct {v0}, Lcom/narvii/permisson/RationaleDialogConfigExt$emptyAction$1;-><init>()V

    sput-object v0, Lcom/narvii/permisson/RationaleDialogConfigExt$emptyAction$1;->INSTANCE:Lcom/narvii/permisson/RationaleDialogConfigExt$emptyAction$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/narvii/permisson/RationaleDialogConfigExt$emptyAction$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
