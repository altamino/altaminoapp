.class Lcom/narvii/util/MoodHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/MoodHelper$1$1;->this$0:Lcom/narvii/util/MoodHelper$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/MoodHelper$1$1;->this$0:Lcom/narvii/util/MoodHelper$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/util/MoodHelper$1;->val$context:Landroid/content/Context;

    .line 5
    .line 6
    instance-of p2, p1, Landroid/app/Activity;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    check-cast p1, Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/util/MoodHelper;->activateAccount(Landroid/app/Activity;)V

    .line 14
    :cond_0
    return-void
.end method
