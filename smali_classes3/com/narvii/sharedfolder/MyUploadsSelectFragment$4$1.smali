.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4$1;
.super Ljava/lang/Object;
.source "MyUploadsSelectFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4$1;->this$1:Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;

    iget-object p1, p1, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$4;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
