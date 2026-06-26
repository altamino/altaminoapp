.class Lcom/narvii/monetization/bubble/BubbleSettingFragment$5$1;
.super Ljava/lang/Object;
.source "BubbleSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5$1;->this$1:Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5$1;->this$1:Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/BubbleSettingFragment$5;->this$0:Lcom/narvii/monetization/bubble/BubbleSettingFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
