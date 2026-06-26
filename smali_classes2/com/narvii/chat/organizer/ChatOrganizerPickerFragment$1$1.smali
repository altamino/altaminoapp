.class Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1$1;
.super Ljava/lang/Object;
.source "ChatOrganizerPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1$1;->this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1$1;->this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;

    iget-object p1, p1, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
