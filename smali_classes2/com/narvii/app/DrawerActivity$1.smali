.class Lcom/narvii/app/DrawerActivity$1;
.super Ljava/lang/Object;
.source "DrawerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/DrawerActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/DrawerActivity;


# direct methods
.method constructor <init>(Lcom/narvii/app/DrawerActivity;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$000(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$000(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v1}, Lcom/narvii/app/DrawerActivity;->access$100(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/drawer/DrawerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$000(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$200(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v2}, Lcom/narvii/app/DrawerActivity;->access$100(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/drawer/DrawerView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0, v1}, Lcom/narvii/app/DrawerActivity;->access$002(Lcom/narvii/app/DrawerActivity;Lcom/narvii/widget/ProxyViewHost;)Lcom/narvii/widget/ProxyViewHost;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$300(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$300(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v2}, Lcom/narvii/app/DrawerActivity;->access$400(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/drawer/DrawerView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$300(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$200(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/drawer/MyDrawerLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v2}, Lcom/narvii/app/DrawerActivity;->access$400(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/drawer/DrawerView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0, v1}, Lcom/narvii/app/DrawerActivity;->access$302(Lcom/narvii/app/DrawerActivity;Lcom/narvii/widget/ProxyViewHost;)Lcom/narvii/widget/ProxyViewHost;

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$500(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$500(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyViewHost;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v2}, Lcom/narvii/app/DrawerActivity;->access$600(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$700(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/community/CBBHost;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$700(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/community/CBBHost;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v2}, Lcom/narvii/app/DrawerActivity;->access$800(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/community/CBBHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$900(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/community/VisitorBarHost;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 193
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0}, Lcom/narvii/app/DrawerActivity;->access$900(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/community/VisitorBarHost;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v2}, Lcom/narvii/app/DrawerActivity;->access$1000(Lcom/narvii/app/DrawerActivity;)Lcom/narvii/widget/ProxyView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/narvii/app/DrawerActivity$1;->this$0:Lcom/narvii/app/DrawerActivity;

    invoke-static {v0, v1}, Lcom/narvii/app/DrawerActivity;->access$1102(Lcom/narvii/app/DrawerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
