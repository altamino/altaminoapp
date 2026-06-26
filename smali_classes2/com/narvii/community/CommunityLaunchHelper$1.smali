.class Lcom/narvii/community/CommunityLaunchHelper$1;
.super Ljava/lang/Object;
.source "CommunityLaunchHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/CommunityLaunchHelper;->onProgress(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityLaunchHelper;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$1;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 437
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$1;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-virtual {p1}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    return-void
.end method
