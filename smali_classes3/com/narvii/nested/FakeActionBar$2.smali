.class final Lcom/narvii/nested/FakeActionBar$2;
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

    iput-object p1, p0, Lcom/narvii/nested/FakeActionBar$2;->this$0:Lcom/narvii/nested/FakeActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/narvii/nested/FakeActionBar$2;->this$0:Lcom/narvii/nested/FakeActionBar;

    invoke-virtual {p1}, Lcom/narvii/nested/FakeActionBar;->getRightViewClickListener()Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/nested/FakeActionBar$IFakeActionBarRightViewClickListener;->onRightViewClick()V

    :cond_0
    return-void
.end method
