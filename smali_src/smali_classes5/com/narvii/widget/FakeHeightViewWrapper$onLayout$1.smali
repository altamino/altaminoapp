.class final Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/FakeHeightViewWrapper;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Integer;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/FakeHeightViewWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/widget/FakeHeightViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$1;->this$0:Lcom/narvii/widget/FakeHeightViewWrapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$1;->this$0:Lcom/narvii/widget/FakeHeightViewWrapper;

    .line 1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$1;->invoke(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
