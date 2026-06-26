.class Lcom/narvii/poweruser/PowerFeedHelper$1;
.super Ljava/lang/Object;
.source "PowerFeedHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/PowerFeedHelper;->showFeatureDialog(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/PowerFeedHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/PowerFeedHelper;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iput-object p2, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-eq p2, p1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    const/4 p2, 0x3

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-static {p1, p2, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->access$000(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object p2, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-static {p1, v0, p2}, Lcom/narvii/poweruser/PowerFeedHelper;->access$000(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object p2, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-static {p2, p1, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->access$000(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V

    :goto_0
    return-void
.end method
