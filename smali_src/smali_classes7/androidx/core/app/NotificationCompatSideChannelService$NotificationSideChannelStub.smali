.class Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
.super Landroid/support/v4/app/INotificationSideChannel$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatSideChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSideChannelStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/app/NotificationCompatSideChannelService;


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroidx/core/app/NotificationCompatSideChannelService;->c(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    :try_start_0
    iget-object v2, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1, p2, p3}, Landroidx/core/app/NotificationCompatSideChannelService;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    throw p1
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroidx/core/app/NotificationCompatSideChannelService;->c(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    :try_start_0
    iget-object v2, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompatSideChannelService;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    throw p1
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroidx/core/app/NotificationCompatSideChannelService;->c(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    :try_start_0
    iget-object v2, p0, Landroidx/core/app/NotificationCompatSideChannelService$NotificationSideChannelStub;->this$0:Landroidx/core/app/NotificationCompatSideChannelService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1, p2, p3, p4}, Landroidx/core/app/NotificationCompatSideChannelService;->d(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    throw p1
.end method
