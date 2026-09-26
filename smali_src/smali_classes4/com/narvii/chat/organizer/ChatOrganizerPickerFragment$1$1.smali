.class Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1$1;->this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1$1;->this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$1;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 8
    return-void
.end method
