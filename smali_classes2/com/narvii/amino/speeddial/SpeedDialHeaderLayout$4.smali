.class Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;
.super Ljava/lang/Object;
.source "SpeedDialHeaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->clearSpeedDialImpression()V

    .line 408
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->logSpeedDialImpression()V

    return-void
.end method
