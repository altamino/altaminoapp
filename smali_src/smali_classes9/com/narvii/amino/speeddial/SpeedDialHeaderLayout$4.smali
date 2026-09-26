.class Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->clearSpeedDialImpression()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->logSpeedDialImpression()V

    .line 11
    return-void
.end method
