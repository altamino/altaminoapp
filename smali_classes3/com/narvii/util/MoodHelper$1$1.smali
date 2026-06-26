.class Lcom/narvii/util/MoodHelper$1$1;
.super Ljava/lang/Object;
.source "MoodHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/MoodHelper$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/MoodHelper$1;


# direct methods
.method constructor <init>(Lcom/narvii/util/MoodHelper$1;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/util/MoodHelper$1$1;->this$0:Lcom/narvii/util/MoodHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/narvii/util/MoodHelper$1$1;->this$0:Lcom/narvii/util/MoodHelper$1;

    iget-object p1, p1, Lcom/narvii/util/MoodHelper$1;->val$context:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 62
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/narvii/util/MoodHelper;->activateAccount(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
