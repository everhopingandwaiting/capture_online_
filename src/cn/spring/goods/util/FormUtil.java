package cn.spring.goods.util;

import cn.spring.goods.form.GoodsForm;
import cn.spring.goods.service.GoodsService;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by john on 15-12-9.
 */
public class FormUtil {

    public static Model model(GoodsForm goodsForm ,GoodsService goodsService,Model model) {
        Map<String, List<GoodsForm>> map = new HashMap<>();
        goodsForm.setType("gallery");
        goodsForm.setLimit(18);

        List<GoodsForm> listGallery = goodsService.searchConditionGoodsListHot(goodsForm);
        int count = listGallery.size() / 6;
        int devLeft = listGallery.size() % 6;
        if (count >= 1) {
            for (int i = 0; i < 6; i++) {
                List<GoodsForm> sublist = new ArrayList<>();
                if (i == 5) {
                    sublist = listGallery.subList(i * count, count * (i + 1) + devLeft);
                } else {
                    sublist = listGallery.subList(i * count, count * (i + 1));
                }
                map.put("grid" + i, sublist);
            }
        } else {
            for (int i = 0; i < 6; i++) {
                List<GoodsForm> sublist = new ArrayList<>();
                if (listGallery.size()-1<i) {
                    GoodsForm form = new GoodsForm();
                    sublist.add(form);
                } else {
                    sublist.add(listGallery.get(i));
                }
                map.put("grid" + i, sublist);
            }

        }
        goodsForm.setType("blog");
        goodsForm.setLimit(3);
        map.put("listHotBlog", goodsService.searchConditionGoodsListHot(goodsForm));
        model.addAllAttributes(map);
        return model;
/*        List<GoodsForm>[] grid = new ArrayList[6];
        Map<String, List> map = new HashMap<>();
        GoodsForm goodsForm = new GoodsForm();
        goodsForm.setType("gallery");
        goodsForm.setLimit(18);
        List<GoodsForm> listGallery = goodsService.searchConditionGoodsListHot(goodsForm);
        GoodsForm list[] = new GoodsForm[listGallery.size()];

        for (int i = 0; i < listGallery.size(); i++) {
//            list[i] = listGallery.subList(i, i + 1);
            list[i] = listGallery.get(i);
        }


        GoodsForm goodsForm1 = new GoodsForm();
        grid[0].add(goodsForm1);

        if (listGallery.size() >= 6) {
            for (int i = 0; i < 6; i++) {
                grid[i].add(list[i]);
                map.put("grid" + i, grid[i]);
            }
            if (listGallery.size() - 6 > 0) {

                for (int i = 0; i < listGallery.size() - 6; i++) {
                    grid[i % 6].add(list[i + 6]);
                }
            }

        } else {
            for (int i = 0; i < 6; i++) {
                if (list[i] == null)
                    grid[i].add(new GoodsForm());
                grid[i].add(list[i]);
                map.put("grid" + i, grid[i]);
            }
        }*/


    }
}
