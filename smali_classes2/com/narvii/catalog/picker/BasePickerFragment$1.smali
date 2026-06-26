.class Lcom/narvii/catalog/picker/BasePickerFragment$1;
.super Ljava/lang/Object;
.source "BasePickerFragment.java"

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

    .line 82
    iput-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment$1;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment$1;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    const/4 v0, -0x1

    iput v0, p1, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 86
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
