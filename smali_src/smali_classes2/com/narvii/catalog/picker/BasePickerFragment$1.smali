.class Lcom/narvii/catalog/picker/BasePickerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/BasePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/BasePickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/picker/BasePickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment$1;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

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
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment$1;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    .line 3
    const/4 v0, -0x1

    .line 4
    .line 5
    iput v0, p1, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 9
    return-void
.end method
