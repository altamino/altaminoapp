.class Lcom/narvii/link/view/CommunityFrame$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/view/CommunityFrame$1;->this$0:Lcom/narvii/link/view/CommunityFrame;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/view/CommunityFrame$1;->this$0:Lcom/narvii/link/view/CommunityFrame;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/link/view/LoadTrackView;->checkIfAllLoadFinished()V

    .line 6
    return-void
.end method
