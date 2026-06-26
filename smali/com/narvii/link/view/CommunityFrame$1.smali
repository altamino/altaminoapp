.class Lcom/narvii/link/view/CommunityFrame$1;
.super Ljava/lang/Object;
.source "CommunityFrame.java"

# interfaces
.implements Lcom/narvii/link/LoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/view/CommunityFrame;->addContentView(Landroid/view/View;Lcom/narvii/model/Community;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/link/view/CommunityFrame;


# direct methods
.method constructor <init>(Lcom/narvii/link/view/CommunityFrame;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/link/view/CommunityFrame$1;->this$0:Lcom/narvii/link/view/CommunityFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/link/view/CommunityFrame$1;->this$0:Lcom/narvii/link/view/CommunityFrame;

    invoke-virtual {v0}, Lcom/narvii/link/view/LoadTrackView;->checkIfAllLoadFinished()V

    return-void
.end method
