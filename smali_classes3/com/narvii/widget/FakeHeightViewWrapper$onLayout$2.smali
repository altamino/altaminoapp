.class final Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FakeHeightViewWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/FakeHeightViewWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/widget/FakeHeightViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$2;->this$0:Lcom/narvii/widget/FakeHeightViewWrapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$2;->invoke(Landroid/view/View;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)Z
    .locals 1

    const-string v0, "it"

    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/widget/FakeHeightViewWrapper$onLayout$2;->this$0:Lcom/narvii/widget/FakeHeightViewWrapper;

    invoke-virtual {v0}, Lcom/narvii/widget/FakeHeightViewWrapper;->getTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
