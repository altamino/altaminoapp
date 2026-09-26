.class Lcom/narvii/user/picker/MultiUserPickerFragment$1;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/picker/MultiUserPickerFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/picker/MultiUserPickerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$1;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
