.class Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "PhoneAudioPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneAudioPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/PhoneAudioPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 468
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    iget-object v0, v0, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    iget-object v0, v0, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 483
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 484
    instance-of v0, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 485
    check-cast p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 486
    invoke-virtual {p1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide v1

    .line 489
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 498
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 499
    instance-of v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    if-eqz v1, :cond_4

    .line 500
    check-cast v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 501
    sget v1, Lcom/narvii/lib/R$layout;->media_audio_picker_item:I

    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 502
    sget p3, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 503
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 505
    sget v1, Lcom/narvii/lib/R$drawable;->ic_audio_default_thubnail:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 510
    :goto_0
    sget p3, Lcom/narvii/lib/R$id;->select:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 511
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    const-string v2, "single"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x8

    .line 512
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 514
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {v1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$500(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {v1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$500(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 515
    sget v1, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 516
    new-instance v1, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter$1;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter$1;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;ILcom/narvii/media/PhoneAudioPickerFragment$Entry;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    :goto_3
    sget p1, Lcom/narvii/lib/R$id;->media_picker_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 525
    iget-object p3, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->name:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    sget p1, Lcom/narvii/lib/R$id;->media_picker_info:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 527
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->artistName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 528
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    sget p1, Lcom/narvii/lib/R$id;->media_picker_time:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 531
    iget p3, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->duration:I

    int-to-long v0, p3

    invoke-static {v0, v1}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    move-result-object p3

    .line 532
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 541
    instance-of v0, p3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    if-eqz v0, :cond_7

    .line 542
    move-object v0, p3

    check-cast v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    if-eqz p5, :cond_0

    .line 544
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/narvii/lib/R$id;->select:I

    if-ne v1, v2, :cond_7

    .line 545
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    const-string p2, "maximum"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    const-string p2, "single"

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    .line 546
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p4}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$500(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-virtual {p4, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 547
    :cond_1
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p4, p5}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$502(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 549
    :cond_2
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p4}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$500(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    if-lez p1, :cond_4

    .line 550
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p4}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$500(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lt p4, p1, :cond_4

    .line 551
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    const-string p5, "maxStr"

    invoke-virtual {p4, p5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 552
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    .line 553
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count_audio:I

    new-array v2, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {p5, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 555
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 558
    :cond_4
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$500(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 562
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$200(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    goto :goto_1

    .line 565
    :cond_6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 566
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->access$600(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    :goto_1
    return p3

    .line 571
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
