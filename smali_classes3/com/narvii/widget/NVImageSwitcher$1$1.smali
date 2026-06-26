.class Lcom/narvii/widget/NVImageSwitcher$1$1;
.super Ljava/lang/Object;
.source "NVImageSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVImageSwitcher$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/widget/NVImageSwitcher$1;

.field final synthetic val$nextUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVImageSwitcher$1;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/widget/NVImageSwitcher$1$1;->this$1:Lcom/narvii/widget/NVImageSwitcher$1;

    iput-object p2, p0, Lcom/narvii/widget/NVImageSwitcher$1$1;->val$nextUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher$1$1;->this$1:Lcom/narvii/widget/NVImageSwitcher$1;

    iget-object v0, v0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    iget-object v1, p0, Lcom/narvii/widget/NVImageSwitcher$1$1;->val$nextUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageSwitcher;->setNextImageUrl(Ljava/lang/String;)V

    return-void
.end method
