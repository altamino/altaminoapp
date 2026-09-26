.class Lcom/narvii/app/NVActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVActivity$9;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/narvii/app/NVActivity$9;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/app/NVActivity$9;->this$0:Lcom/narvii/app/NVActivity;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 13
    .line 14
    const-string v0, "fail to simulate onBackPressed(), finish directly"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :goto_0
    return-void
.end method
