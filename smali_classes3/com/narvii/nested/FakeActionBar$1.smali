.class final Lcom/narvii/nested/FakeActionBar$1;
.super Ljava/lang/Object;
.source "FakeActionBar.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/FakeActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/FakeActionBar;


# direct methods
.method constructor <init>(Lcom/narvii/nested/FakeActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nested/FakeActionBar$1;->this$0:Lcom/narvii/nested/FakeActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lcom/narvii/nested/FakeActionBar$1;->this$0:Lcom/narvii/nested/FakeActionBar;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/narvii/nested/FakeActionBar$1;->this$0:Lcom/narvii/nested/FakeActionBar;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
