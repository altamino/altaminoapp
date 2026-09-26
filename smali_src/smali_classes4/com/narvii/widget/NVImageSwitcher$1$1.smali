.class Lcom/narvii/widget/NVImageSwitcher$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVImageSwitcher$1$1;->this$1:Lcom/narvii/widget/NVImageSwitcher$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/NVImageSwitcher$1$1;->val$nextUrl:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher$1$1;->this$1:Lcom/narvii/widget/NVImageSwitcher$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/NVImageSwitcher$1$1;->val$nextUrl:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageSwitcher;->setNextImageUrl(Ljava/lang/String;)V

    .line 10
    return-void
.end method
