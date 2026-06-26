.class Lcom/tonyodev/fetch/FetchService$2;
.super Ljava/lang/Object;
.source "FetchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch/FetchService;->processAction(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/FetchService;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/FetchService;Landroid/os/Bundle;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    iput-object p2, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 234
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$000(Lcom/tonyodev/fetch/FetchService;)Lcom/tonyodev/fetch/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonyodev/fetch/DatabaseHelper;->clean()V

    .line 236
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-wide/16 v1, -0x1

    const-string v3, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 238
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const/4 v3, -0x1

    const-string v4, "com.tonyodev.fetch.action_type"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    const/16 v5, 0x258

    const-string v6, "com.tonyodev.fetch.extra_priority"

    const-string v7, "com.tonyodev.fetch.extra_url"

    packed-switch v0, :pswitch_data_0

    .line 319
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    goto/16 :goto_0

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$1600(Lcom/tonyodev/fetch/FetchService;)V

    goto/16 :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0, v8, v9}, Lcom/tonyodev/fetch/FetchService;->access$1500(Lcom/tonyodev/fetch/FetchService;J)V

    goto/16 :goto_0

    .line 301
    :pswitch_2
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-wide/16 v1, 0x7d0

    const-string v3, "com.tonyodev.fetch.extra_on_update_interval"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 302
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v2, v0, v1}, Lcom/tonyodev/fetch/FetchService;->access$1300(Lcom/tonyodev/fetch/FetchService;J)V

    goto/16 :goto_0

    .line 306
    :pswitch_3
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v1, v8, v9, v0}, Lcom/tonyodev/fetch/FetchService;->access$1400(Lcom/tonyodev/fetch/FetchService;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 296
    :pswitch_4
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v1, "com.tonyodev.fetch.extra_concurrent_download_limit"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->access$1200(Lcom/tonyodev/fetch/FetchService;I)V

    goto/16 :goto_0

    .line 267
    :pswitch_5
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v1, "com.tonyodev.fetch.extra_logging_id"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->access$600(Lcom/tonyodev/fetch/FetchService;Z)V

    goto/16 :goto_0

    .line 292
    :pswitch_6
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$1100(Lcom/tonyodev/fetch/FetchService;)V

    goto/16 :goto_0

    .line 288
    :pswitch_7
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0, v8, v9}, Lcom/tonyodev/fetch/FetchService;->access$1000(Lcom/tonyodev/fetch/FetchService;J)V

    goto/16 :goto_0

    .line 283
    :pswitch_8
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v1, v8, v9, v0}, Lcom/tonyodev/fetch/FetchService;->access$900(Lcom/tonyodev/fetch/FetchService;JI)V

    goto :goto_0

    .line 276
    :pswitch_9
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v4, "com.tonyodev.fetch.extra_query_id"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 277
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const/16 v1, 0x1e1

    const-string v2, "com.tonyodev.fetch.extra_query_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 278
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v1, "com.tonyodev.fetch.extra_status"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 279
    iget-object v4, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static/range {v4 .. v10}, Lcom/tonyodev/fetch/FetchService;->access$800(Lcom/tonyodev/fetch/FetchService;IJJI)V

    goto :goto_0

    .line 272
    :pswitch_a
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    goto :goto_0

    .line 262
    :pswitch_b
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const/16 v1, 0xc8

    const-string v2, "com.tonyodev.fetch.extra_network_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v1, v0}, Lcom/tonyodev/fetch/FetchService;->access$500(Lcom/tonyodev/fetch/FetchService;I)V

    goto :goto_0

    .line 245
    :pswitch_c
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0, v8, v9}, Lcom/tonyodev/fetch/FetchService;->access$200(Lcom/tonyodev/fetch/FetchService;J)V

    goto :goto_0

    .line 249
    :pswitch_d
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0, v8, v9}, Lcom/tonyodev/fetch/FetchService;->access$300(Lcom/tonyodev/fetch/FetchService;J)V

    goto :goto_0

    .line 241
    :pswitch_e
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0, v8, v9}, Lcom/tonyodev/fetch/FetchService;->access$100(Lcom/tonyodev/fetch/FetchService;J)V

    goto :goto_0

    .line 253
    :pswitch_f
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v2, "com.tonyodev.fetch.extra_file_path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v3, "com.tonyodev.fetch.extra_headers"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 258
    iget-object v4, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/tonyodev/fetch/FetchService;->access$400(Lcom/tonyodev/fetch/FetchService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
